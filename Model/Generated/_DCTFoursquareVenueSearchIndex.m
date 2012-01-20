// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to DCTFoursquareVenueSearchIndex.m instead.

#import "_DCTFoursquareVenueSearchIndex.h"

const struct DCTFoursquareVenueSearchIndexAttributes DCTFoursquareVenueSearchIndexAttributes = {
	.distance = @"distance",
};

const struct DCTFoursquareVenueSearchIndexRelationships DCTFoursquareVenueSearchIndexRelationships = {
	.venue = @"venue",
	.venueSearch = @"venueSearch",
};

const struct DCTFoursquareVenueSearchIndexFetchedProperties DCTFoursquareVenueSearchIndexFetchedProperties = {
};

@implementation DCTFoursquareVenueSearchIndexID
@end

@implementation _DCTFoursquareVenueSearchIndex

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"DCTFoursquareVenueSearchIndex" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"DCTFoursquareVenueSearchIndex";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"DCTFoursquareVenueSearchIndex" inManagedObjectContext:moc_];
}

- (DCTFoursquareVenueSearchIndexID*)objectID {
	return (DCTFoursquareVenueSearchIndexID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"distanceValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"distance"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
	}

	return keyPaths;
}




@dynamic distance;



- (long long)distanceValue {
	NSNumber *result = [self distance];
	return [result longLongValue];
}

- (void)setDistanceValue:(long long)value_ {
	[self setDistance:[NSNumber numberWithLongLong:value_]];
}

- (long long)primitiveDistanceValue {
	NSNumber *result = [self primitiveDistance];
	return [result longLongValue];
}

- (void)setPrimitiveDistanceValue:(long long)value_ {
	[self setPrimitiveDistance:[NSNumber numberWithLongLong:value_]];
}





@dynamic venue;

	

@dynamic venueSearch;

	





@end
