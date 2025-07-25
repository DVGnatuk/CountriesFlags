//
//  UIImage+GuineaBissau.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (GuineaBissau)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Guinea-Bissau "wikipedia"
 
 Generates the flag of Guinea-Bissau.
 For more information see [wikipedia].
 
 - Parameters:
    - size: image size.
 
 - Returns: Returns the flag of Guinea-Bissau.
 */
+ (UIImage * _Nullable)flagGuineaBissauWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
