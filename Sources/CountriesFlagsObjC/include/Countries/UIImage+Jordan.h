//
//  UIImage+Jordan.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Jordan)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Jordan "wikipedia"
 
 Generates the flag of Jordan.
 For more information see [wikipedia].
 
 - Parameters:
    - size: image size.
 
 - Returns: Returns the flag of Jordan.
 */
+ (UIImage * _Nullable)flagJordanWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
