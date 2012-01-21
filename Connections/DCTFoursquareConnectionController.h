//
//  DCTFoursquareConnectionController.h
//  DCTFoursquare
//
//  Created by Daniel Tull on 20.01.2012.
//  Copyright (c) 2012 Daniel Tull Limited. All rights reserved.
//

#import "DCTRESTConnectionController.h"
#import "DCTConnectionQueue+Singleton.h"

@interface DCTFoursquareConnectionController : DCTRESTConnectionController


+ (void)setClientID:(NSString *)clientID secret:(NSString *)clientSecret;


- (id)initWithManagedObjectContext:(NSManagedObjectContext *)managedObjectContext;
@property (nonatomic, readonly) NSManagedObjectContext *managedObjectContext;

@property (nonatomic, copy) NSString *clientID;
@property (nonatomic, copy) NSString *clientSecret;

- (void)connectionDidReceiveDictionary:(NSDictionary *)dictionary;
- (void)connectionDidReceiveArray:(NSArray *)array;

- (id)objectFromReceivedObject:(id)object insertIntoManagedObjectContext:(NSManagedObjectContext *)context;
- (void)handleReturnedObjects:(NSArray *)returnedObjects inManagedObjectContext:(NSManagedObjectContext *)context;

@end
