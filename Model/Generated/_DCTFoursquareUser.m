// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to DCTFoursquareUser.m instead.

#import "_DCTFoursquareUser.h"

const struct DCTFoursquareUserAttributes DCTFoursquareUserAttributes = {
};

const struct DCTFoursquareUserRelationships DCTFoursquareUserRelationships = {
};

const struct DCTFoursquareUserFetchedProperties DCTFoursquareUserFetchedProperties = {
};

@implementation DCTFoursquareUserID
@end

@implementation _DCTFoursquareUser

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"DCTFoursquareUser" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"DCTFoursquareUser";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"DCTFoursquareUser" inManagedObjectContext:moc_];
}

- (DCTFoursquareUserID*)objectID {
	return (DCTFoursquareUserID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}








@end
