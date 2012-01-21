//
//  DCTFoursquareConnectionController.m
//  DCTFoursquare
//
//  Created by Daniel Tull on 20.01.2012.
//  Copyright (c) 2012 Daniel Tull Limited. All rights reserved.
//

#import "DCTFoursquare.h"
#import "DCTFoursquareConnectionController.h"
#import "NSManagedObjectContext+DCTCoreDataStack.h"
#import "NSJSONSerialization+DCTBlocks.h"
#import "NSManagedObjectContext+DCTExtras.h"
#import <objc/runtime.h>

@interface DCTFoursquareConnectionController ()
@property (nonatomic, readonly) NSManagedObjectContext *backgroundManagedObjectContext;
@end

@implementation DCTFoursquareConnectionController {
	__strong NSManagedObjectContext *managedObjectContext;
	__strong NSManagedObjectContext *backgroundContext;
}
@synthesize clientID;
@synthesize clientSecret;

- (id)initWithManagedObjectContext:(NSManagedObjectContext *)context {
	
	if (!(self = [super init])) return nil;
	
	managedObjectContext = context;
	
	return self;	
}

- (NSString *)baseURLString {
	return @"https://api.foursquare.com/v2/";
}

+ (NSArray *)queryProperties {
	return [NSArray arrayWithObjects:@"client_id", @"client_secret", @"v", nil];
}

- (id)valueForConnectionKey:(id)key {
	
	if ([key isEqualToString:@"client_id"])
		return self.clientID;
	
	if ([key isEqualToString:@"client_secret"])
		return self.clientSecret;
	
	if ([key isEqualToString:@"v"])
		return @"20120120";
	
	return [super valueForConnectionKey:key];	
}

- (NSManagedObjectContext *)managedObjectContext {
	return managedObjectContext;
}

- (NSManagedObjectContext *)backgroundManagedObjectContext {
	
	if (self.managedObjectContext == nil) return nil;
	
	if (backgroundContext == nil)
		backgroundContext = objc_getAssociatedObject(self.managedObjectContext, _cmd);
	
	if (![backgroundContext.parentContext isEqual:self.managedObjectContext]) {
		
		backgroundContext = [[NSManagedObjectContext alloc] initWithConcurrencyType:NSPrivateQueueConcurrencyType];
		backgroundContext.parentContext = self.managedObjectContext;
		backgroundContext.dct_name = @"DCTFoursquareConnectionController.backgroundProcessingContext";
		
		objc_setAssociatedObject(self.managedObjectContext, _cmd, backgroundContext, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
	}
	
    return backgroundContext;
}

- (void)connectionDidFinishLoading {
	
	NSAssert(self.managedObjectContext, @"managedObjectContext is required.");
	
	// Sanity check. Just in case.
	dispatch_queue_t current = dispatch_get_current_queue();
	[self.managedObjectContext performBlockAndWait:^{
		dispatch_queue_t contextQueue = dispatch_get_current_queue();
		
		if (current != contextQueue) {
			NSLog(@"%@ %s", self.managedObjectContext.dct_name, dispatch_queue_get_label(contextQueue));
			NSLog(@"%s",dispatch_queue_get_label(current));	
		}		
		NSAssert(current == contextQueue, @"Queues are messed up.");
	}];
	
	if (![self.returnedObject isKindOfClass:[NSData class]]) 
		return [super connectionDidFinishLoading];
	
	[NSJSONSerialization dct_parseData:(NSData *)self.returnedObject completionHandler:^(id object) {
		
		if ([object isKindOfClass:[NSDictionary class]])
			[self connectionDidReceiveDictionary:object];
		
		else if ([object isKindOfClass:[NSArray class]])
			[self connectionDidReceiveArray:object];
		
	} errorHandler:^(NSError *error) {
		
		NSString *dataString = [[NSString alloc] initWithData:(NSData *)self.returnedObject encoding:NSUTF8StringEncoding];
		NSLog(@"%@:%@ Error parsing JSON: %@", self, NSStringFromSelector(_cmd), dataString);
		
		self.returnedError = error;		
		[self connectionDidFail];
		
	}];
}


- (void)connectionDidReceiveArray:(NSArray *)array {
	
	NSManagedObjectContext *childContext = self.backgroundManagedObjectContext;
	
	[childContext performBlock:^{
		
		NSMutableArray *objectIDs = [[NSMutableArray alloc] initWithCapacity:[array count]];
		NSMutableArray *objects = [[NSMutableArray alloc] initWithCapacity:[array count]];
		
		for (id o in array) {
			
			NSManagedObject *managedObject = [self objectFromReceivedObject:o insertIntoManagedObjectContext:childContext];
			
			if (managedObject) {
				[objectIDs addObject:[managedObject objectID]];
				[objects addObject:managedObject];
			}
		}
		
		if ([objects count] > 0) 
			[self handleReturnedObjects:objects inManagedObjectContext:childContext];
		
		[childContext dct_saveWithCompletionHandler:^(BOOL success, NSError *error) {
			[self.managedObjectContext dct_performWithObjectIDs:objectIDs block:^(NSArray *returnedObjects) {
				[self.managedObjectContext dct_saveWithCompletionHandler:^(BOOL success, NSError *error) {
					self.returnedObject = returnedObjects;
					[self connectionDidFinishLoading];
				}];
			}];
		}];
	}];
}

- (void)connectionDidReceiveDictionary:(NSDictionary *)dictionary {
	
	NSManagedObjectContext *childContext = self.backgroundManagedObjectContext;
	
	[childContext performBlock:^{
		NSManagedObject *o = [self objectFromReceivedObject:dictionary insertIntoManagedObjectContext:childContext];
		
		if (o != nil)
			[self handleReturnedObjects:[NSArray arrayWithObject:o] inManagedObjectContext:childContext];
		
		[childContext dct_saveWithCompletionHandler:^(BOOL success, NSError *error) {
			[self.managedObjectContext dct_performWithObjectID:[o objectID] block:^(NSManagedObject *object) {
				[self.managedObjectContext dct_saveWithCompletionHandler:^(BOOL success, NSError *error) {
					self.returnedObject = object;
					[self connectionDidFinishLoading];
				}];
			}];
		}];
	}];
}

- (void)handleReturnedObjects:(NSArray *)returnedObjects inManagedObjectContext:(NSManagedObjectContext *)context {}
- (id)objectFromReceivedObject:(id)object insertIntoManagedObjectContext:(NSManagedObjectContext *)context {
	return nil;
}

@end
