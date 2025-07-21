//
//  UIImage+Bahamas.h
//  CountriesFlags
//  

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Bahamas)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_the_Bahamas "wikipedia"
 
 Generates the flag of Bahamas.
 For more information see [wikipedia].

 - Parameters:
    - size: image size.
 
 - Returns: Returns the flag of Bahamas.
 */
+(UIImage * _Nullable) flagBahamasWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
