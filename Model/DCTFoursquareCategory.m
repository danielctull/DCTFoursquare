#import "DCTFoursquareCategory.h"
#import "DCTFoursquareIcon.h"

@implementation DCTFoursquareCategory

+ (NSArray *)dct_uniqueKeys {
	return [NSArray arrayWithObject:DCTFoursquareCategoryAttributes.categoryID];
}

+ (NSDictionary *)dct_mappingFromRemoteNamesToLocalNames {
	
	static NSDictionary *dct_mappingFromRemoteNamesToLocalNames = nil;
	static dispatch_once_t dct_mappingFromRemoteNamesToLocalNamesToken;
	dispatch_once(&dct_mappingFromRemoteNamesToLocalNamesToken, ^{
		dct_mappingFromRemoteNamesToLocalNames = [[NSDictionary alloc] initWithObjectsAndKeys:
												  DCTFoursquareCategoryAttributes.categoryID, @"id",
												  nil];
	});
	
	return dct_mappingFromRemoteNamesToLocalNames;
}

- (BOOL)dct_setSerializedValue:(id)value forKey:(NSString *)key {
	
	if ([key isEqualToString:@"icon"]) {
		
		NSString *prefix = [value objectForKey:@"prefix"];
		NSArray *sizes = [value objectForKey:@"sizes"];
		NSString *suffix = [value objectForKey:@"name"];
		
		for (NSNumber *size in sizes) {
			
			NSString *urlString = [NSString stringWithFormat:@"%@%@%@", prefix, size, suffix];
			DCTFoursquareIcon *icon = [DCTFoursquareIcon iconForURLString:urlString
												   inManagedObjectContext:self.managedObjectContext];
			[self addIconsObject:icon];
		}
		
		return YES;
	}
	
	return [super dct_setSerializedValue:value forKey:key];
}

@end
