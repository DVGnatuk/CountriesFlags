//
//  UIImage+Ireland.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Ireland)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Ireland "wikipedia"
 
 Generates the flag of Ireland.
 For more information see [wikipedia].

 - Parameters:
    - size: image size.
 
 - Returns: Returns the flag of Ireland.
 */
+ (UIImage * _Nullable)flagIrelandWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
