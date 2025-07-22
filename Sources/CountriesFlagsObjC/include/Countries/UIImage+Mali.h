//
//  UIImage+Mali.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Mali)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Mali "wikipedia"
 
 Generates the flag of Mali.
 For more information see [wikipedia].

 - Parameters:
    - size: image size.
 
 - Returns: Returns the flag of Mali.
 */
+ (UIImage * _Nullable)flagMaliWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
