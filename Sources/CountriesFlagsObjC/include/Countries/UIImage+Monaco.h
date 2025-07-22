//
//  UIImage+Monaco.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Monaco)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Monaco "wikipedia"
 
 Generates the flag of Monaco.
 For more information see [wikipedia].
 
 - Parameters:
    - size: image size.
 
 - Returns: Returns the flag of Monaco.
 */
+ (UIImage * _Nullable)flagMonacoWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
