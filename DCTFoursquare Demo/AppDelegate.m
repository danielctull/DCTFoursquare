//
//  AppDelegate.m
//  DCTFoursquare
//
//  Created by Daniel Tull on 20.01.2012.
//  Copyright (c) 2012 Daniel Tull Limited. All rights reserved.
//

#import "AppDelegate.h"
#import "DCTCoreDataStack.h"
#import "VenueSearchViewController.h"


@implementation AppDelegate {
	__strong DCTCoreDataStack *coreDataStack;
}

@synthesize window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	
	coreDataStack = [[DCTCoreDataStack alloc] initWithStoreFilename:@"Foursquare"];
		
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];	
	
	self.window.rootViewController = [[VenueSearchViewController alloc] initWithManagedObjectContext:coreDataStack.managedObjectContext];
	
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
