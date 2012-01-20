//
//  DCTFoursquareManagedObject.m
//  DCTFoursquare
//
//  Created by Daniel Tull on 20.01.2012.
//  Copyright (c) 2012 Daniel Tull Limited. All rights reserved.
//

#import "DCTFoursquareManagedObject.h"

@implementation DCTFoursquareManagedObject

- (void)awakeFromInsert {
	[super awakeFromInsert];
	[self.managedObjectContext obtainPermanentIDsForObjects:[NSArray arrayWithObject:self] error:nil];
}

@end
