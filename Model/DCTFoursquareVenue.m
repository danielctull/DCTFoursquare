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
												  nil];
	});
	
	return dct_mappingFromRemoteNamesToLocalNames;
}

@end
