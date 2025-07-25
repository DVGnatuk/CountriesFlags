//
//  UIImage+Togo.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Togo)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Togo "wikipedia"
 
 Generates the flag of Togo.
 For more information see [wikipedia].
 
 - Parameters:
    - size: image size.
 
 - Returns: Returns the flag of Togo.
 */
+ (UIImage * _Nullable)flagTogoWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
