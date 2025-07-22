//
//  UIImage+Tonga.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Tonga)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Tonga "wikipedia"
 
 Generates the flag of Tonga.
 For more information see [wikipedia].
 
 - Parameters:
    - size: image size.
 
 - Returns: Returns the flag of Tonga.
 */
+ (UIImage * _Nullable)flagTongaWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
