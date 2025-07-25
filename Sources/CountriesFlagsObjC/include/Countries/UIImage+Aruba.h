//
//  UIImage+Aruba.h
//  CountriesFlags
// 

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Aruba)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Aruba "wikipedia"
 
 Generates the flag of Aruba.
 For more information see [wikipedia].

 - Parameters:
    - size: image size.
 
 - Returns: Returns the flag of Aruba.
 */
+ (UIImage * _Nullable)flagArubaWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
