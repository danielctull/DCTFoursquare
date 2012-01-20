// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to DCTFoursquareVenueSearchIndex.h instead.

#import <CoreData/CoreData.h>
#import "DCTFoursquareManagedObject.h"

extern const struct DCTFoursquareVenueSearchIndexAttributes {
	__unsafe_unretained NSString *distance;
} DCTFoursquareVenueSearchIndexAttributes;

extern const struct DCTFoursquareVenueSearchIndexRelationships {
	__unsafe_unretained NSString *venue;
	__unsafe_unretained NSString *venueSearch;
} DCTFoursquareVenueSearchIndexRelationships;

extern const struct DCTFoursquareVenueSearchIndexFetchedProperties {
} DCTFoursquareVenueSearchIndexFetchedProperties;

@class DCTFoursquareVenue;
@class DCTFoursquareVenueSearch;



@interface DCTFoursquareVenueSearchIndexID : NSManagedObjectID {}
@end

@interface _DCTFoursquareVenueSearchIndex : DCTFoursquareManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (DCTFoursquareVenueSearchIndexID*)objectID;




@property (nonatomic, strong) NSNumber *distance;


@property long long distanceValue;
- (long long)distanceValue;
- (void)setDistanceValue:(long long)value_;

//- (BOOL)validateDistance:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) DCTFoursquareVenue* venue;

//- (BOOL)validateVenue:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) DCTFoursquareVenueSearch* venueSearch;

//- (BOOL)validateVenueSearch:(id*)value_ error:(NSError**)error_;




@end

@interface _DCTFoursquareVenueSearchIndex (CoreDataGeneratedAccessors)

@end

@interface _DCTFoursquareVenueSearchIndex (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveDistance;
- (void)setPrimitiveDistance:(NSNumber*)value;

- (long long)primitiveDistanceValue;
- (void)setPrimitiveDistanceValue:(long long)value_;





- (DCTFoursquareVenue*)primitiveVenue;
- (void)setPrimitiveVenue:(DCTFoursquareVenue*)value;



- (DCTFoursquareVenueSearch*)primitiveVenueSearch;
- (void)setPrimitiveVenueSearch:(DCTFoursquareVenueSearch*)value;


@end
