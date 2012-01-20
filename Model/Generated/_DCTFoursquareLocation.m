// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to DCTFoursquareLocation.m instead.

#import "_DCTFoursquareLocation.h"

const struct DCTFoursquareLocationAttributes DCTFoursquareLocationAttributes = {
	.address = @"address",
	.city = @"city",
	.country = @"country",
	.crossStreet = @"crossStreet",
	.lat = @"lat",
	.lng = @"lng",
	.postalCode = @"postalCode",
	.state = @"state",
};

const struct DCTFoursquareLocationRelationships DCTFoursquareLocationRelationships = {
	.venues = @"venues",
};

const struct DCTFoursquareLocationFetchedProperties DCTFoursquareLocationFetchedProperties = {
};

@implementation DCTFoursquareLocationID
@end

@implementation _DCTFoursquareLocation

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"DCTFoursquareLocation" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"DCTFoursquareLocation";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"DCTFoursquareLocation" inManagedObjectContext:moc_];
}

- (DCTFoursquareLocationID*)objectID {
	return (DCTFoursquareLocationID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"latValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"lat"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
	}
	if ([key isEqualToString:@"lngValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"lng"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
	}

	return keyPaths;
}




@dynamic address;






@dynamic city;






@dynamic country;






@dynamic crossStreet;






@dynamic lat;



- (float)latValue {
	NSNumber *result = [self lat];
	return [result floatValue];
}

- (void)setLatValue:(float)value_ {
	[self setLat:[NSNumber numberWithFloat:value_]];
}

- (float)primitiveLatValue {
	NSNumber *result = [self primitiveLat];
	return [result floatValue];
}

- (void)setPrimitiveLatValue:(float)value_ {
	[self setPrimitiveLat:[NSNumber numberWithFloat:value_]];
}





@dynamic lng;



- (float)lngValue {
	NSNumber *result = [self lng];
	return [result floatValue];
}

- (void)setLngValue:(float)value_ {
	[self setLng:[NSNumber numberWithFloat:value_]];
}

- (float)primitiveLngValue {
	NSNumber *result = [self primitiveLng];
	return [result floatValue];
}

- (void)setPrimitiveLngValue:(float)value_ {
	[self setPrimitiveLng:[NSNumber numberWithFloat:value_]];
}





@dynamic postalCode;






@dynamic state;






@dynamic venues;

	
- (NSMutableSet*)venuesSet {
	[self willAccessValueForKey:@"venues"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"venues"];
  
	[self didAccessValueForKey:@"venues"];
	return result;
}
	





@end
