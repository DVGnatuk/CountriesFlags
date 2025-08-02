//
//  UIImage+Panama.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Panama)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Panama "wikipedia"
 
 Generates the flag of Panama.
 For more information see [wikipedia].
 
 @param size: Image size.
 @returns Returns the flag of Panama.
 */
+ (UIImage * _Nullable)flagPanamaWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
