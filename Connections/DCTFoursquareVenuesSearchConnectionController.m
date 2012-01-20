//
//  DCTFoursquareVenuesSearchConnectionController.m
//  DCTFoursquare
//
//  Created by Daniel Tull on 20.01.2012.
//  Copyright (c) 2012 Daniel Tull Limited. All rights reserved.
//

#import "DCTFoursquareVenuesSearchConnectionController.h"

@implementation DCTFoursquareVenuesSearchConnectionController
@synthesize query;
@synthesize location;

- (NSString *)baseURLString {
	return [NSString stringWithFormat:@"%@venues/search", [super baseURLString]];
}

+ (NSArray *)queryProperties {
	return [NSArray arrayWithObjects:@"ll", @"query", nil];
}

- (id)valueForConnectionKey:(id)key {
	
	if ([key isEqualToString:@"ll"])
		return [NSString stringWithFormat:@"%@,%@", self.location.coordinate.latitude, self.location.coordinate.longitude];
	
	return [super valueForConnectionKey:key];
}

@end
