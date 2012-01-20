// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to DCTFoursquareVenueSearch.h instead.

#import <CoreData/CoreData.h>
#import "DCTFoursquareManagedObject.h"

extern const struct DCTFoursquareVenueSearchAttributes {
	__unsafe_unretained NSString *attribute;
	__unsafe_unretained NSString *query;
} DCTFoursquareVenueSearchAttributes;

extern const struct DCTFoursquareVenueSearchRelationships {
	__unsafe_unretained NSString *venues;
} DCTFoursquareVenueSearchRelationships;

extern const struct DCTFoursquareVenueSearchFetchedProperties {
} DCTFoursquareVenueSearchFetchedProperties;

@class DCTFoursquareVenue;




@interface DCTFoursquareVenueSearchID : NSManagedObjectID {}
@end

@interface _DCTFoursquareVenueSearch : DCTFoursquareManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (DCTFoursquareVenueSearchID*)objectID;









@property (nonatomic, strong) NSSet* venues;

- (NSMutableSet*)venuesSet;




@end

@interface _DCTFoursquareVenueSearch (CoreDataGeneratedAccessors)

- (void)addVenues:(NSSet*)value_;
- (void)removeVenues:(NSSet*)value_;
- (void)addVenuesObject:(DCTFoursquareVenue*)value_;
- (void)removeVenuesObject:(DCTFoursquareVenue*)value_;

@end

@interface _DCTFoursquareVenueSearch (CoreDataGeneratedPrimitiveAccessors)







- (NSMutableSet*)primitiveVenues;
- (void)setPrimitiveVenues:(NSMutableSet*)value;


@end
