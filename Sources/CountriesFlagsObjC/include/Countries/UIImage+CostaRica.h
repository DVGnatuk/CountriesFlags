//
//  UIImage+CostaRica.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (CostaRica)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Costa_Rica "wikipedia"
 
 Generates the flag of Costa Rica.
 For more information see [wikipedia].
 
 - Parameters:
    - size: image size.
 
 - Returns: Returns the flag of Costa Rica.
 */
+(UIImage * _Nullable) flagCostaRicaWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
