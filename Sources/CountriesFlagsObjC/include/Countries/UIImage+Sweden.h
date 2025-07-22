//
//  UIImage+Sweden.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Sweden)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Sweden "wikipedia"
 
 Generates the flag of Sweden.
 For more information see [wikipedia].
 
 - Parameters:
    - size: image size.
 
 - Returns: Returns the flag of Sweden.
 */
+ (UIImage * _Nullable)flagSwedenWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
