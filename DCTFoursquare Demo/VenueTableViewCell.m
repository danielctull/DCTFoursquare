//
//  VenueTableViewCell.m
//  DCTFoursquare
//
//  Created by Daniel Tull on 21.01.2012.
//  Copyright (c) 2012 Daniel Tull Limited. All rights reserved.
//

#import "VenueTableViewCell.h"
#import "DCTFoursquareVenue.h"
#import "DCTFoursquareLocation.h"

@implementation VenueTableViewCell
@synthesize nameLabel;
@synthesize addressLabel;

- (void)configureWithObject:(DCTFoursquareVenue *)venue {
	self.nameLabel.text = venue.name;
	self.addressLabel.text = venue.location.address;
}

@end
