// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to DCTFoursquareCategory.h instead.

#import <CoreData/CoreData.h>
#import "DCTFoursquareManagedObject.h"

extern const struct DCTFoursquareCategoryAttributes {
	__unsafe_unretained NSString *categoryID;
	__unsafe_unretained NSString *iconURLString;
	__unsafe_unretained NSString *name;
	__unsafe_unretained NSString *pluralName;
	__unsafe_unretained NSString *shortName;
} DCTFoursquareCategoryAttributes;

extern const struct DCTFoursquareCategoryRelationships {
	__unsafe_unretained NSString *icons;
	__unsafe_unretained NSString *venues;
} DCTFoursquareCategoryRelationships;

extern const struct DCTFoursquareCategoryFetchedProperties {
} DCTFoursquareCategoryFetchedProperties;

@class DCTFoursquareIcon;
@class DCTFoursquareVenue;







@interface DCTFoursquareCategoryID : NSManagedObjectID {}
@end

@interface _DCTFoursquareCategory : DCTFoursquareManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (DCTFoursquareCategoryID*)objectID;




@property (nonatomic, strong) NSString *categoryID;


//- (BOOL)validateCategoryID:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString *iconURLString;


//- (BOOL)validateIconURLString:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString *name;


//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString *pluralName;


//- (BOOL)validatePluralName:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString *shortName;


//- (BOOL)validateShortName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet* icons;

- (NSMutableSet*)iconsSet;




@property (nonatomic, strong) NSSet* venues;

- (NSMutableSet*)venuesSet;




@end

@interface _DCTFoursquareCategory (CoreDataGeneratedAccessors)

- (void)addIcons:(NSSet*)value_;
- (void)removeIcons:(NSSet*)value_;
- (void)addIconsObject:(DCTFoursquareIcon*)value_;
- (void)removeIconsObject:(DCTFoursquareIcon*)value_;

- (void)addVenues:(NSSet*)value_;
- (void)removeVenues:(NSSet*)value_;
- (void)addVenuesObject:(DCTFoursquareVenue*)value_;
- (void)removeVenuesObject:(DCTFoursquareVenue*)value_;

@end

@interface _DCTFoursquareCategory (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveCategoryID;
- (void)setPrimitiveCategoryID:(NSString*)value;




- (NSString*)primitiveIconURLString;
- (void)setPrimitiveIconURLString:(NSString*)value;




- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




- (NSString*)primitivePluralName;
- (void)setPrimitivePluralName:(NSString*)value;




- (NSString*)primitiveShortName;
- (void)setPrimitiveShortName:(NSString*)value;





- (NSMutableSet*)primitiveIcons;
- (void)setPrimitiveIcons:(NSMutableSet*)value;



- (NSMutableSet*)primitiveVenues;
- (void)setPrimitiveVenues:(NSMutableSet*)value;


@end
