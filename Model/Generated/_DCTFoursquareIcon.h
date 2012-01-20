// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to DCTFoursquareIcon.h instead.

#import <CoreData/CoreData.h>
#import "DCTFoursquareManagedObject.h"

extern const struct DCTFoursquareIconAttributes {
	__unsafe_unretained NSString *size;
	__unsafe_unretained NSString *urlString;
} DCTFoursquareIconAttributes;

extern const struct DCTFoursquareIconRelationships {
	__unsafe_unretained NSString *categories;
} DCTFoursquareIconRelationships;

extern const struct DCTFoursquareIconFetchedProperties {
} DCTFoursquareIconFetchedProperties;

@class DCTFoursquareCategory;




@interface DCTFoursquareIconID : NSManagedObjectID {}
@end

@interface _DCTFoursquareIcon : DCTFoursquareManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (DCTFoursquareIconID*)objectID;




@property (nonatomic, strong) NSNumber *size;


@property short sizeValue;
- (short)sizeValue;
- (void)setSizeValue:(short)value_;

//- (BOOL)validateSize:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString *urlString;


//- (BOOL)validateUrlString:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet* categories;

- (NSMutableSet*)categoriesSet;




@end

@interface _DCTFoursquareIcon (CoreDataGeneratedAccessors)

- (void)addCategories:(NSSet*)value_;
- (void)removeCategories:(NSSet*)value_;
- (void)addCategoriesObject:(DCTFoursquareCategory*)value_;
- (void)removeCategoriesObject:(DCTFoursquareCategory*)value_;

@end

@interface _DCTFoursquareIcon (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveSize;
- (void)setPrimitiveSize:(NSNumber*)value;

- (short)primitiveSizeValue;
- (void)setPrimitiveSizeValue:(short)value_;




- (NSString*)primitiveUrlString;
- (void)setPrimitiveUrlString:(NSString*)value;





- (NSMutableSet*)primitiveCategories;
- (void)setPrimitiveCategories:(NSMutableSet*)value;


@end
