//
//  DCTFoursquareVenuesSearchConnectionController.m
//  DCTFoursquare
//
//  Created by Daniel Tull on 20.01.2012.
//  Copyright (c) 2012 Daniel Tull Limited. All rights reserved.
//

#import "DCTFoursquareVenuesSearchConnectionController.h"
#import "DCTFoursquareVenue.h"

@implementation DCTFoursquareVenuesSearchConnectionController
@synthesize query;
@synthesize coordinate;

- (NSString *)baseURLString {
	return [NSString stringWithFormat:@"%@venues/search", [super baseURLString]];
}

+ (NSArray *)queryProperties {
	return [NSArray arrayWithObjects:@"ll", @"query", nil];
}

- (id)valueForConnectionKey:(id)key {
	
	if ([key isEqualToString:@"ll"])
		return [NSString stringWithFormat:@"%f,%f", self.coordinate.latitude, self.coordinate.longitude];
	
	return [super valueForConnectionKey:key];
}

- (void)connectionDidReceiveDictionary:(NSDictionary *)dictionary {
	
	NSDictionary *response = [dictionary objectForKey:@"response"];
	if (response != nil) {
		NSArray *venues = [response objectForKey:@"venues"];
		NSLog(@"%@", venues);
		[self connectionDidReceiveArray:venues];
		return;
	}
	
	[super connectionDidReceiveDictionary:dictionary];
}

- (id)objectFromReceivedObject:(id)object insertIntoManagedObjectContext:(NSManagedObjectContext *)context {
	return [DCTFoursquareVenue dct_objectFromDictionary:object insertIntoManagedObjectContext:context];
}

@end
