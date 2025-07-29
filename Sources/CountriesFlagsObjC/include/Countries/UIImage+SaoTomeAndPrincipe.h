//
//  UIImage+SaoTomeAndPrincipe.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (SaoTomeAndPrincipe)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_São_Tomé_and_Príncipe "wikipedia"
 
 Generates the flag of São Tomé and Príncipe.
 For more information see [wikipedia].

 - Parameters:
    - size: image size.
 
 - Returns: Returns the flag of São Tomé and Príncipe.
 */
+ (UIImage * _Nullable)flagSaoTomeAndPrincipeWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
