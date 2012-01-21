//
//  VenueSearchViewController.m
//  DCTFoursquare
//
//  Created by Daniel Tull on 20.01.2012.
//  Copyright (c) 2012 Daniel Tull Limited. All rights reserved.
//

#import "VenueSearchViewController.h"
#import "DCTFoursquareVenuesSearchConnectionController.h"
#import "FRCFetchedResultsTableViewDataSource.h"
#import "DCTFoursquareVenue.h"
#import "DCTFoursquareVenueSearch.h"
#import "VenueTableViewCell.h"

@implementation VenueSearchViewController {
	__strong NSManagedObjectContext *managedObjectContext;
	__strong FRCFetchedResultsTableViewDataSource *dataSource;
	__strong DCTFoursquareVenueSearch *search;
}

@synthesize mapView;
@synthesize tableView;

- (id)initWithManagedObjectContext:(NSManagedObjectContext *)context {
	
	if (!(self = [self initWithNibName:NSStringFromClass([self class]) bundle:nil])) return nil;
	
	managedObjectContext = context;
	
	return self;	
}

- (void)viewDidLoad {
	[super viewDidLoad];
	
	dataSource = [FRCFetchedResultsTableViewDataSource new];
	dataSource.cellClass = [VenueTableViewCell class];
	self.tableView.dataSource = dataSource;
	dataSource.tableView = self.tableView;
}

- (void)mapView:(MKMapView *)mv regionDidChangeAnimated:(BOOL)animated {
	dataSource.fetchedResultsController = [search fetchedResultsControllerForVenuesWithinRegion:self.mapView.region];
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)sb {
	
	search = [DCTFoursquareVenueSearch venueSearchWithQuery:sb.text 
										   centerCoordinate:self.mapView.centerCoordinate
									 inManagedObjectContext:managedObjectContext];
	
	dataSource.fetchedResultsController = [search fetchedResultsControllerForVenuesWithinRegion:self.mapView.region];
	
	[sb resignFirstResponder];
}

@end
