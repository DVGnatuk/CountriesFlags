//
//  UIImage+Estonia.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Estonia)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Estonia "wikipedia"
 
 Generates the flag of Estonia.
 For more information see [wikipedia].

 - Parameters:
    - size: image size.
 
 - Returns: Returns the flag of Estonia.
 */
+(UIImage * _Nullable) flagEstoniaWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
