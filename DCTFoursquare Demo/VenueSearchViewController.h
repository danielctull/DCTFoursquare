//
//  VenueSearchViewController.h
//  DCTFoursquare
//
//  Created by Daniel Tull on 20.01.2012.
//  Copyright (c) 2012 Daniel Tull Limited. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface VenueSearchViewController : UIViewController <UISearchBarDelegate>

- (id)initWithManagedObjectContext:(NSManagedObjectContext *)managedObjectContext;

@property (nonatomic, weak) IBOutlet MKMapView *mapView;
@property (nonatomic, weak) IBOutlet UITableView *tableView;

@end
