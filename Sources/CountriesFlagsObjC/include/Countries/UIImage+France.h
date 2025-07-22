//
//  UIImage+France.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (France)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_France "wikipedia"
 
 Generates the flag of France.
 For more information see [wikipedia].

 - Parameters:
    - size: image size.
 
 - Returns: Returns the flag of France.
 */
+ (UIImage * _Nullable)flagFranceWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
