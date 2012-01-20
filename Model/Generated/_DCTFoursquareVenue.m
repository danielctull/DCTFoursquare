// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to DCTFoursquareVenue.m instead.

#import "_DCTFoursquareVenue.h"

const struct DCTFoursquareVenueAttributes DCTFoursquareVenueAttributes = {
	.name = @"name",
	.venueID = @"venueID",
};

const struct DCTFoursquareVenueRelationships DCTFoursquareVenueRelationships = {
	.category = @"category",
	.indexes = @"indexes",
	.location = @"location",
};

const struct DCTFoursquareVenueFetchedProperties DCTFoursquareVenueFetchedProperties = {
};

@implementation DCTFoursquareVenueID
@end

@implementation _DCTFoursquareVenue

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"DCTFoursquareVenue" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"DCTFoursquareVenue";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"DCTFoursquareVenue" inManagedObjectContext:moc_];
}

- (DCTFoursquareVenueID*)objectID {
	return (DCTFoursquareVenueID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic name;






@dynamic venueID;






@dynamic category;

	

@dynamic indexes;

	
- (NSMutableSet*)indexesSet {
	[self willAccessValueForKey:@"indexes"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"indexes"];
  
	[self didAccessValueForKey:@"indexes"];
	return result;
}
	

@dynamic location;

	





@end
