#import "_DCTFoursquareVenueSearch.h"
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface DCTFoursquareVenueSearch : _DCTFoursquareVenueSearch

+ (id)venueSearchWithQuery:(NSString *)query 
		  centerCoordinate:(CLLocationCoordinate2D)coordinate
	inManagedObjectContext:(NSManagedObjectContext *)managedObjectContext;

- (NSFetchedResultsController *)fetchedResultsControllerForVenuesWithinRegion:(MKCoordinateRegion)region;

@end
