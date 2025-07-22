//
//  UIImage+Belgium.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Belgium)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Belgium "wikipedia"
 
 Generates the flag of Belgium.
 For more information see [wikipedia].

 - Parameters:
    - size: image size.
 
 - Returns: Returns the flag of Belgium.
 */
+ (UIImage * _Nullable)flagBelgiumWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
