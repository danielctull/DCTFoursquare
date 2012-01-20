// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to DCTFoursquareIcon.m instead.

#import "_DCTFoursquareIcon.h"

const struct DCTFoursquareIconAttributes DCTFoursquareIconAttributes = {
	.size = @"size",
	.urlString = @"urlString",
};

const struct DCTFoursquareIconRelationships DCTFoursquareIconRelationships = {
	.categories = @"categories",
};

const struct DCTFoursquareIconFetchedProperties DCTFoursquareIconFetchedProperties = {
};

@implementation DCTFoursquareIconID
@end

@implementation _DCTFoursquareIcon

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"DCTFoursquareIcon" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"DCTFoursquareIcon";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"DCTFoursquareIcon" inManagedObjectContext:moc_];
}

- (DCTFoursquareIconID*)objectID {
	return (DCTFoursquareIconID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"sizeValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"size"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
	}

	return keyPaths;
}




@dynamic size;



- (short)sizeValue {
	NSNumber *result = [self size];
	return [result shortValue];
}

- (void)setSizeValue:(short)value_ {
	[self setSize:[NSNumber numberWithShort:value_]];
}

- (short)primitiveSizeValue {
	NSNumber *result = [self primitiveSize];
	return [result shortValue];
}

- (void)setPrimitiveSizeValue:(short)value_ {
	[self setPrimitiveSize:[NSNumber numberWithShort:value_]];
}





@dynamic urlString;






@dynamic categories;

	
- (NSMutableSet*)categoriesSet {
	[self willAccessValueForKey:@"categories"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"categories"];
  
	[self didAccessValueForKey:@"categories"];
	return result;
}
	





@end
