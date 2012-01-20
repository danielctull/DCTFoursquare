#import "DCTFoursquareIcon.h"
#import "NSManagedObjectContext+DCTDataFetching.h"
#import "NSPredicate+DCTExtras.h"

@implementation DCTFoursquareIcon

+ (DCTFoursquareIcon *)iconForURLString:(NSString *)URLString 
				 inManagedObjectContext:(NSManagedObjectContext *)context {
	
	
	NSPredicate *predicate = [NSPredicate dct_predicateWhereProperty:DCTFoursquareIconAttributes.urlString equals:URLString];
	
	DCTFoursquareIcon *icon = [context dct_fetchAnyObjectForEntityName:[self entityName]
															 predicate:predicate];
	
	if (!icon) {
		icon = [DCTFoursquareIcon insertInManagedObjectContext:context];
		icon.urlString = URLString;
	}
	
	return icon;	
}

@end
