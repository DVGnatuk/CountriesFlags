//
//  UIImage+Madagascar.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Madagascar)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Madagascar "wikipedia"
 
 Generates the flag of Madagascar.
 For more information see [wikipedia].
 
 @param size: Image size.
 @returns Returns the flag of Madagascar.
 */
+ (UIImage * _Nullable)flagMadagascarWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
