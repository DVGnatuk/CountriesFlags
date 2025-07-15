//
//  UIImage+Ukraine.h
//  

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Ukraine)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Ukraine "wikipedia"
 
 Generates the flag of Ukraine.
 For more information see [wikipedia].
 
 - Parameters:
    - size: image size.
 
 - Returns: Returns the flag of Ukraine.
 */
+(UIImage * _Nullable) flagUkraineWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
