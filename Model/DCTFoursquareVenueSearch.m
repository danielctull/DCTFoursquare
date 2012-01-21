#import "DCTFoursquareVenueSearch.h"
#import "DCTFoursquareVenue.h"
#import "DCTFoursquareLocation.h"
#import "NSPredicate+DCTExtras.h"
#import "NSManagedObjectContext+DCTDataFetching.h"
#import "DCTFoursquareVenuesSearchConnectionController.h"
#import "NSManagedObjectContext+DCTCoreDataStack.h"

@implementation DCTFoursquareVenueSearch

+ (id)venueSearchWithQuery:(NSString *)query centerCoordinate:(CLLocationCoordinate2D)coordinate inManagedObjectContext:(NSManagedObjectContext *)managedObjectContext {
	
	NSPredicate *predicate = [NSPredicate dct_predicateWhereProperty:DCTFoursquareVenueSearchAttributes.query equals:query];
	DCTFoursquareVenueSearch *search = [managedObjectContext dct_fetchAnyObjectForEntityName:[DCTFoursquareVenueSearch entityName] predicate:predicate];
	
	if (!search) {
		search = [DCTFoursquareVenueSearch insertInManagedObjectContext:managedObjectContext];
		search.query = query;		
	}
	
	DCTFoursquareVenuesSearchConnectionController *cc = [[DCTFoursquareVenuesSearchConnectionController alloc] initWithManagedObjectContext:managedObjectContext];
	cc.query = query;
	cc.coordinate = coordinate;
	
	NSBundle *bundle = [NSBundle mainBundle];	
	cc.clientID = [bundle objectForInfoDictionaryKey:@"CLIENT_ID"];
	cc.clientSecret = [bundle objectForInfoDictionaryKey:@"CLIENT_SECRET"];
	
	__weak DCTFoursquareVenuesSearchConnectionController *weakCC = cc;
	[cc addFinishHandler:^{
		if ([weakCC.returnedObject isKindOfClass:[NSArray class]]) {
			[search addVenues:[NSSet setWithArray:weakCC.returnedObject]];
			[managedObjectContext dct_save];
		}
	}];
	
	[cc connect];
	
	return search;	
}

- (NSFetchedResultsController *)fetchedResultsControllerForVenuesWithinRegion:(MKCoordinateRegion)region {
	
	NSFetchRequest *fr = [NSFetchRequest new];
	fr.entity = [DCTFoursquareVenue entityInManagedObjectContext:self.managedObjectContext];
	
	NSPredicate *searchPredicate = [NSPredicate predicateWithFormat:@"%K CONTAINS %@", DCTFoursquareVenueRelationships.searches, self];
	
	NSPredicate *miniumumLatitudePredicate = [NSPredicate predicateWithFormat:@"%K.%K > %f",
											  DCTFoursquareVenueRelationships.location,
											  DCTFoursquareLocationAttributes.lat,
											  region.center.latitude - region.span.latitudeDelta];
	
	NSPredicate *maximumLatitudePredicate = [NSPredicate predicateWithFormat:@"%K.%K < %f",
											 DCTFoursquareVenueRelationships.location,
											 DCTFoursquareLocationAttributes.lat,
											 region.center.latitude + region.span.latitudeDelta];
											  
	NSPredicate *miniumumLongitudePredicate = [NSPredicate predicateWithFormat:@"%K.%K > %f", 
											   DCTFoursquareVenueRelationships.location,
											   DCTFoursquareLocationAttributes.lng,
											   region.center.longitude - region.span.longitudeDelta];
	
	NSPredicate *maximumLongitudePredicate = [NSPredicate predicateWithFormat:@"%K.%K < %f",
											  DCTFoursquareVenueRelationships.location,
											  DCTFoursquareLocationAttributes.lng,
											  region.center.longitude + region.span.longitudeDelta];
	
	fr.predicate = [NSCompoundPredicate andPredicateWithSubpredicates:[NSArray arrayWithObjects:searchPredicate, miniumumLatitudePredicate, maximumLatitudePredicate, miniumumLongitudePredicate, maximumLongitudePredicate, nil]];
	
	fr.sortDescriptors = [NSArray arrayWithObject:[NSSortDescriptor sortDescriptorWithKey:DCTFoursquareVenueAttributes.name ascending:YES]];
	
	return [[NSFetchedResultsController alloc] initWithFetchRequest:fr
											   managedObjectContext:self.managedObjectContext
												 sectionNameKeyPath:nil 
														  cacheName:nil];
	
}

@end
