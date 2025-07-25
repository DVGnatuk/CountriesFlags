//
//  UIImage+Mauritius.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Mauritius)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Mauritius "wikipedia"
 
 Generates the flag of Mauritius.
 For more information see [wikipedia].
 
 - Parameters:
    - size: image size.
 
 - Returns: Returns the flag of Mauritius.
 */
+ (UIImage * _Nullable)flagMauritiusWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
