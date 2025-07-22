//
//  UIImage+Austria.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Austria)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Austria "wikipedia"
 
 Generates the flag of Austria.
 For more information see [wikipedia].

 - Parameters:
    - size: image size.
 
 - Returns: Returns the flag of Austria.
 */
+ (UIImage * _Nullable)flagAustriaWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
