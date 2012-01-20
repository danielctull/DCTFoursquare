//
//  DCTFoursquareVenuesSearchConnectionController.h
//  DCTFoursquare
//
//  Created by Daniel Tull on 20.01.2012.
//  Copyright (c) 2012 Daniel Tull Limited. All rights reserved.
//

#import "DCTFoursquareConnectionController.h"
#import <CoreLocation/CoreLocation.h>

@interface DCTFoursquareVenuesSearchConnectionController : DCTFoursquareConnectionController
@property (nonatomic, copy) NSString *query;
@property (nonatomic, assign) CLLocationCoordinate2D coordinate;
@end
