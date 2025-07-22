//
//  UIImage+RussianFederation.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (RussianFederation)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Russia "wikipedia"
 
 Generates the flag of Russian federation.
 For more information see [wikipedia].

 - Parameters:
    - size: image size.
 
 - Returns: Returns the flag of Russian federation.
 */
+ (UIImage * _Nullable)flagRussianFederationWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
