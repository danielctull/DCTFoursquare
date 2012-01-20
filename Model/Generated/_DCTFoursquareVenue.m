// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to DCTFoursquareVenue.m instead.

#import "_DCTFoursquareVenue.h"

const struct DCTFoursquareVenueAttributes DCTFoursquareVenueAttributes = {
	.name = @"name",
	.venueID = @"venueID",
};

const struct DCTFoursquareVenueRelationships DCTFoursquareVenueRelationships = {
	.categories = @"categories",
	.location = @"location",
	.searches = @"searches",
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






@dynamic categories;

	
- (NSMutableSet*)categoriesSet {
	[self willAccessValueForKey:@"categories"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"categories"];
  
	[self didAccessValueForKey:@"categories"];
	return result;
}
	

@dynamic location;

	

@dynamic searches;

	
- (NSMutableSet*)searchesSet {
	[self willAccessValueForKey:@"searches"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"searches"];
  
	[self didAccessValueForKey:@"searches"];
	return result;
}
	





@end
