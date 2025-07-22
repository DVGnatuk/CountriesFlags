//
//  UIImage+Martinique.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Martinique)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Martinique "wikipedia"
 
 Generates the flag of Martinique.
 For more information see [wikipedia].
 
 - Parameters:
    - size: image size.
 
 - Returns: Returns the flag of Martinique.
 */
+ (UIImage * _Nullable)flagMartiniqueWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
