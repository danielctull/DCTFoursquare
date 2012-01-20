#import "DCTFoursquareLocation.h"

@implementation DCTFoursquareLocation

+ (NSArray *)dct_uniqueKeys {
	return [NSArray arrayWithObjects:DCTFoursquareLocationAttributes.lat, DCTFoursquareLocationAttributes.lng, nil];
}

@end
