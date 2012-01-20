// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to DCTFoursquareCategory.m instead.

#import "_DCTFoursquareCategory.h"

const struct DCTFoursquareCategoryAttributes DCTFoursquareCategoryAttributes = {
	.categoryID = @"categoryID",
	.iconURLString = @"iconURLString",
	.name = @"name",
	.pluralName = @"pluralName",
	.shortName = @"shortName",
};

const struct DCTFoursquareCategoryRelationships DCTFoursquareCategoryRelationships = {
	.icons = @"icons",
	.venues = @"venues",
};

const struct DCTFoursquareCategoryFetchedProperties DCTFoursquareCategoryFetchedProperties = {
};

@implementation DCTFoursquareCategoryID
@end

@implementation _DCTFoursquareCategory

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"DCTFoursquareCategory" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"DCTFoursquareCategory";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"DCTFoursquareCategory" inManagedObjectContext:moc_];
}

- (DCTFoursquareCategoryID*)objectID {
	return (DCTFoursquareCategoryID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic categoryID;






@dynamic iconURLString;






@dynamic name;






@dynamic pluralName;






@dynamic shortName;






@dynamic icons;

	
- (NSMutableSet*)iconsSet {
	[self willAccessValueForKey:@"icons"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"icons"];
  
	[self didAccessValueForKey:@"icons"];
	return result;
}
	

@dynamic venues;

	
- (NSMutableSet*)venuesSet {
	[self willAccessValueForKey:@"venues"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"venues"];
  
	[self didAccessValueForKey:@"venues"];
	return result;
}
	





@end
