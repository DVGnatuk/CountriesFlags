//
//  UIImage+Vietnam.h
//  CountriesFlags
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Vietnam)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Vietnam "wikipedia"
 
 Generates the flag of Vietnam.
 For more information see [wikipedia].

 - Parameters:
    - size: image size.
 
 - Returns: Returns the flag of Vietnam.
 */
+ (UIImage * _Nullable)flagVietnamWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
