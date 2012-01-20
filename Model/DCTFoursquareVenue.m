#import "DCTFoursquareVenue.h"

@implementation DCTFoursquareVenue

+ (NSArray *)dct_uniqueKeys {
	return [NSArray arrayWithObject:DCTFoursquareVenueAttributes.venueID];
}

+ (NSDictionary *)dct_mappingFromRemoteNamesToLocalNames {
	
	static NSDictionary *dct_mappingFromRemoteNamesToLocalNames = nil;
	static dispatch_once_t dct_mappingFromRemoteNamesToLocalNamesToken;
	dispatch_once(&dct_mappingFromRemoteNamesToLocalNamesToken, ^{
		dct_mappingFromRemoteNamesToLocalNames = [[NSDictionary alloc] initWithObjectsAndKeys:
												  DCTFoursquareVenueAttributes.venueID, @"id",
												  DCTFoursquareVenueAttributes.urlString, @"url",
												  nil];
	});
	
	return dct_mappingFromRemoteNamesToLocalNames;
}

- (BOOL)dct_setSerializedValue:(id)value forKey:(NSString *)key {
	
	if ([key isEqualToString:@"contact"]) {
		[self dct_setupFromDictionary:value];
		return YES;
	}
	
	return [super dct_setSerializedValue:value forKey:key];
}

@end
