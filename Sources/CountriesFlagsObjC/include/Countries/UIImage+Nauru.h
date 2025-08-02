//
//  UIImage+Nauru.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Nauru)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Nauru "wikipedia"
 
 Generates the flag of Nauru.
 For more information see [wikipedia].

 @param size: image size.
 @returns: Returns the flag of Nauru.
 */
+ (UIImage * _Nullable)flagNauruWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
