//
//  UIImage+PuertoRico.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (PuertoRico)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Puerto_Rico "wikipedia"
 
 Generates the flag of Puerto Rico.
 For more information see [wikipedia].
 
 @param size: Image size.
 @returns Returns the flag of Puerto Rico.
 */
+ (UIImage * _Nullable)flagPuertoRicoWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
