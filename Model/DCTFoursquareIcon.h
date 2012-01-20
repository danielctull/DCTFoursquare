#import "_DCTFoursquareIcon.h"

@interface DCTFoursquareIcon : _DCTFoursquareIcon
+ (DCTFoursquareIcon *)iconForURLString:(NSString *)URLString
				 inManagedObjectContext:(NSManagedObjectContext *)managedObjectContext;
@end
