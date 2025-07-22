//
//  UIImage+Iceland.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Iceland)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Iceland "wikipedia"
 
 Generates the flag of Iceland.
 For more information see [wikipedia].
 
 - Parameters:
    - size: image size.
 
 - Returns: Returns the flag of Iceland.
 */
+ (UIImage * _Nullable)flagIcelandWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
