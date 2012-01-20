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
	__unsafe_unretained NSString *location;
	__unsafe_unretained NSString *searches;
} DCTFoursquareVenueRelationships;

extern const struct DCTFoursquareVenueFetchedProperties {
} DCTFoursquareVenueFetchedProperties;

@class DCTFoursquareCategory;
@class DCTFoursquareLocation;
@class DCTFoursquareVenueSearch;




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




@property (nonatomic, strong) DCTFoursquareLocation* location;

//- (BOOL)validateLocation:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSSet* searches;

- (NSMutableSet*)searchesSet;




@end

@interface _DCTFoursquareVenue (CoreDataGeneratedAccessors)

- (void)addCategories:(NSSet*)value_;
- (void)removeCategories:(NSSet*)value_;
- (void)addCategoriesObject:(DCTFoursquareCategory*)value_;
- (void)removeCategoriesObject:(DCTFoursquareCategory*)value_;

- (void)addSearches:(NSSet*)value_;
- (void)removeSearches:(NSSet*)value_;
- (void)addSearchesObject:(DCTFoursquareVenueSearch*)value_;
- (void)removeSearchesObject:(DCTFoursquareVenueSearch*)value_;

@end

@interface _DCTFoursquareVenue (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




- (NSString*)primitiveVenueID;
- (void)setPrimitiveVenueID:(NSString*)value;





- (NSMutableSet*)primitiveCategories;
- (void)setPrimitiveCategories:(NSMutableSet*)value;



- (DCTFoursquareLocation*)primitiveLocation;
- (void)setPrimitiveLocation:(DCTFoursquareLocation*)value;



- (NSMutableSet*)primitiveSearches;
- (void)setPrimitiveSearches:(NSMutableSet*)value;


@end
