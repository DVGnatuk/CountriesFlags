//
//  UIImage+Chad.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Chad)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Chad "wikipedia"
 
 Generates the flag of Chad.
 For more information see [wikipedia].

 - Parameters:
    - size: image size.
 
 - Returns: Returns the flag of Chad.
 */
+(UIImage * _Nullable) flagChadWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
