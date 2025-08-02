//
//  UIImage+Bulgaria.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Bulgaria)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Bulgaria "wikipedia"
 
 Generates the flag of Bulgaria.
 For more information see [wikipedia].

 @param size: Image size.
 @returns Returns the flag of Bulgaria.
 */
+ (UIImage * _Nullable)flagBulgariaWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
