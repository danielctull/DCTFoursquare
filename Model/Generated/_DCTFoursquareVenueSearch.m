// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to DCTFoursquareVenueSearch.m instead.

#import "_DCTFoursquareVenueSearch.h"

const struct DCTFoursquareVenueSearchAttributes DCTFoursquareVenueSearchAttributes = {
};

const struct DCTFoursquareVenueSearchRelationships DCTFoursquareVenueSearchRelationships = {
	.indexes = @"indexes",
};

const struct DCTFoursquareVenueSearchFetchedProperties DCTFoursquareVenueSearchFetchedProperties = {
};

@implementation DCTFoursquareVenueSearchID
@end

@implementation _DCTFoursquareVenueSearch

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"DCTFoursquareVenueSearch" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"DCTFoursquareVenueSearch";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"DCTFoursquareVenueSearch" inManagedObjectContext:moc_];
}

- (DCTFoursquareVenueSearchID*)objectID {
	return (DCTFoursquareVenueSearchID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic indexes;

	
- (NSMutableSet*)indexesSet {
	[self willAccessValueForKey:@"indexes"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"indexes"];
  
	[self didAccessValueForKey:@"indexes"];
	return result;
}
	





@end
