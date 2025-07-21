//
//  UIImage+Bangladesh.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Bangladesh)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Bangladesh "wikipedia"
 
 Generates the flag of Bangladesh.
 For more information see [wikipedia].
 
 - Parameters:
    - size: image size.
 
 - Returns: Returns the flag of Bangladesh.
 */
+(UIImage * _Nullable) flagBangladeshWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
