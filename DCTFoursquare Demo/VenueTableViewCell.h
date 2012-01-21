//
//  VenueTableViewCell.h
//  DCTFoursquare
//
//  Created by Daniel Tull on 21.01.2012.
//  Copyright (c) 2012 Daniel Tull Limited. All rights reserved.
//

#import "FRCTableViewCell.h"

@interface VenueTableViewCell : FRCTableViewCell
@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *addressLabel;
@end
