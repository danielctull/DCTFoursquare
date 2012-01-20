// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to DCTFoursquareVenue.h instead.

#import <CoreData/CoreData.h>
#import "DCTFoursquareManagedObject.h"

extern const struct DCTFoursquareVenueAttributes {
	__unsafe_unretained NSString *name;
	__unsafe_unretained NSString *venueID;
} DCTFoursquareVenueAttributes;

extern const struct DCTFoursquareVenueRelationships {
	__unsafe_unretained NSString *categories;
	__unsafe_unretained NSString *indexes;
	__unsafe_unretained NSString *location;
} DCTFoursquareVenueRelationships;

extern const struct DCTFoursquareVenueFetchedProperties {
} DCTFoursquareVenueFetchedProperties;

@class DCTFoursquareCategory;
@class DCTFoursquareVenueSearchIndex;
@class DCTFoursquareLocation;




@interface DCTFoursquareVenueID : NSManagedObjectID {}
@end

@interface _DCTFoursquareVenue : DCTFoursquareManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (DCTFoursquareVenueID*)objectID;




@property (nonatomic, strong) NSString *name;


//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString *venueID;


//- (BOOL)validateVenueID:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet* categories;

- (NSMutableSet*)categoriesSet;




@property (nonatomic, strong) NSSet* indexes;

- (NSMutableSet*)indexesSet;




@property (nonatomic, strong) DCTFoursquareLocation* location;

//- (BOOL)validateLocation:(id*)value_ error:(NSError**)error_;




@end

@interface _DCTFoursquareVenue (CoreDataGeneratedAccessors)

- (void)addCategories:(NSSet*)value_;
- (void)removeCategories:(NSSet*)value_;
- (void)addCategoriesObject:(DCTFoursquareCategory*)value_;
- (void)removeCategoriesObject:(DCTFoursquareCategory*)value_;

- (void)addIndexes:(NSSet*)value_;
- (void)removeIndexes:(NSSet*)value_;
- (void)addIndexesObject:(DCTFoursquareVenueSearchIndex*)value_;
- (void)removeIndexesObject:(DCTFoursquareVenueSearchIndex*)value_;

@end

@interface _DCTFoursquareVenue (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




- (NSString*)primitiveVenueID;
- (void)setPrimitiveVenueID:(NSString*)value;





- (NSMutableSet*)primitiveCategories;
- (void)setPrimitiveCategories:(NSMutableSet*)value;



- (NSMutableSet*)primitiveIndexes;
- (void)setPrimitiveIndexes:(NSMutableSet*)value;



- (DCTFoursquareLocation*)primitiveLocation;
- (void)setPrimitiveLocation:(DCTFoursquareLocation*)value;


@end
