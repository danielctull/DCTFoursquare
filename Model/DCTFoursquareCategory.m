#import "DCTFoursquareCategory.h"
#import "DCTFoursquareIcon.h"

@implementation DCTFoursquareCategory

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
