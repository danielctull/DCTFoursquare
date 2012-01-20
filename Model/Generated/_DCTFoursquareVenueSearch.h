// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to DCTFoursquareVenueSearch.h instead.

#import <CoreData/CoreData.h>
#import "DCTFoursquareManagedObject.h"

extern const struct DCTFoursquareVenueSearchAttributes {
} DCTFoursquareVenueSearchAttributes;

extern const struct DCTFoursquareVenueSearchRelationships {
	__unsafe_unretained NSString *indexes;
} DCTFoursquareVenueSearchRelationships;

extern const struct DCTFoursquareVenueSearchFetchedProperties {
} DCTFoursquareVenueSearchFetchedProperties;

@class DCTFoursquareVenueSearchIndex;


@interface DCTFoursquareVenueSearchID : NSManagedObjectID {}
@end

@interface _DCTFoursquareVenueSearch : DCTFoursquareManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (DCTFoursquareVenueSearchID*)objectID;





@property (nonatomic, strong) NSSet* indexes;

- (NSMutableSet*)indexesSet;




@end

@interface _DCTFoursquareVenueSearch (CoreDataGeneratedAccessors)

- (void)addIndexes:(NSSet*)value_;
- (void)removeIndexes:(NSSet*)value_;
- (void)addIndexesObject:(DCTFoursquareVenueSearchIndex*)value_;
- (void)removeIndexesObject:(DCTFoursquareVenueSearchIndex*)value_;

@end

@interface _DCTFoursquareVenueSearch (CoreDataGeneratedPrimitiveAccessors)



- (NSMutableSet*)primitiveIndexes;
- (void)setPrimitiveIndexes:(NSMutableSet*)value;


@end
