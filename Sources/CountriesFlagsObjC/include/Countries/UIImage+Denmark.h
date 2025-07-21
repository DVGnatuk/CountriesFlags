//
//  UIImage+Denmark.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Denmark)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Denmark "wikipedia"
 
 Generates the flag of Denmark.
 For more information see [wikipedia].
 
 - Parameters:
    - size: image size.
 
 - Returns: Returns the flag of Denmark.
 */
+(UIImage * _Nullable) flagDenmarkWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
