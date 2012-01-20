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

@implementation VenueSearchViewController {
	__strong NSManagedObjectContext *context;
	__strong FRCFetchedResultsTableViewDataSource *dataSource;
}

@synthesize mapView;
@synthesize tableView;

- (id)initWithManagedObjectContext:(NSManagedObjectContext *)managedObjectContext {
	
	if (!(self = [self initWithNibName:NSStringFromClass([self class]) bundle:nil])) return nil;
	
	context = managedObjectContext;
	
	return self;	
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)sb {
	
	DCTFoursquareVenuesSearchConnectionController *cc = [[DCTFoursquareVenuesSearchConnectionController alloc] initWithManagedObjectContext:context];
	cc.query = sb.text;
	cc.coordinate = self.mapView.centerCoordinate;
	
	NSBundle *bundle = [NSBundle mainBundle];	
	cc.clientID = [bundle objectForInfoDictionaryKey:@"CLIENT_ID"];
	cc.clientSecret = [bundle objectForInfoDictionaryKey:@"CLIENT_SECRET"];
	[cc connect];
	[sb resignFirstResponder];
}



- (void)viewDidLoad {
	[super viewDidLoad];
	/*
	[NSFetchRequest 	
	
	dataSource = [FRCFetchedResultsTableViewDataSource new];
	dataSource.managedObjectContext = context;
	dataSource.fetchRequest =*/
}

@end
