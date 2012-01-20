// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to DCTFoursquareLocation.h instead.

#import <CoreData/CoreData.h>
#import "DCTFoursquareManagedObject.h"

extern const struct DCTFoursquareLocationAttributes {
	__unsafe_unretained NSString *address;
	__unsafe_unretained NSString *city;
	__unsafe_unretained NSString *country;
	__unsafe_unretained NSString *crossStreet;
	__unsafe_unretained NSString *lat;
	__unsafe_unretained NSString *lng;
	__unsafe_unretained NSString *postalCode;
	__unsafe_unretained NSString *state;
} DCTFoursquareLocationAttributes;

extern const struct DCTFoursquareLocationRelationships {
	__unsafe_unretained NSString *venues;
} DCTFoursquareLocationRelationships;

extern const struct DCTFoursquareLocationFetchedProperties {
} DCTFoursquareLocationFetchedProperties;

@class DCTFoursquareVenue;










@interface DCTFoursquareLocationID : NSManagedObjectID {}
@end

@interface _DCTFoursquareLocation : DCTFoursquareManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (DCTFoursquareLocationID*)objectID;




@property (nonatomic, strong) NSString *address;


//- (BOOL)validateAddress:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString *city;


//- (BOOL)validateCity:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString *country;


//- (BOOL)validateCountry:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString *crossStreet;


//- (BOOL)validateCrossStreet:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSNumber *lat;


@property float latValue;
- (float)latValue;
- (void)setLatValue:(float)value_;

//- (BOOL)validateLat:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSNumber *lng;


@property float lngValue;
- (float)lngValue;
- (void)setLngValue:(float)value_;

//- (BOOL)validateLng:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString *postalCode;


//- (BOOL)validatePostalCode:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString *state;


//- (BOOL)validateState:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet* venues;

- (NSMutableSet*)venuesSet;




@end

@interface _DCTFoursquareLocation (CoreDataGeneratedAccessors)

- (void)addVenues:(NSSet*)value_;
- (void)removeVenues:(NSSet*)value_;
- (void)addVenuesObject:(DCTFoursquareVenue*)value_;
- (void)removeVenuesObject:(DCTFoursquareVenue*)value_;

@end

@interface _DCTFoursquareLocation (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveAddress;
- (void)setPrimitiveAddress:(NSString*)value;




- (NSString*)primitiveCity;
- (void)setPrimitiveCity:(NSString*)value;




- (NSString*)primitiveCountry;
- (void)setPrimitiveCountry:(NSString*)value;




- (NSString*)primitiveCrossStreet;
- (void)setPrimitiveCrossStreet:(NSString*)value;




- (NSNumber*)primitiveLat;
- (void)setPrimitiveLat:(NSNumber*)value;

- (float)primitiveLatValue;
- (void)setPrimitiveLatValue:(float)value_;




- (NSNumber*)primitiveLng;
- (void)setPrimitiveLng:(NSNumber*)value;

- (float)primitiveLngValue;
- (void)setPrimitiveLngValue:(float)value_;




- (NSString*)primitivePostalCode;
- (void)setPrimitivePostalCode:(NSString*)value;




- (NSString*)primitiveState;
- (void)setPrimitiveState:(NSString*)value;





- (NSMutableSet*)primitiveVenues;
- (void)setPrimitiveVenues:(NSMutableSet*)value;


@end
