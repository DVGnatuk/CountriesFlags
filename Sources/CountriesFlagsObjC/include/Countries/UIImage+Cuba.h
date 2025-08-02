//
//  UIImage+Cuba.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Cuba)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Cuba "wikipedia"
 
 Generates the flag of Cuba.
 For more information see [wikipedia].

 @param size: Image size.
 @returns Returns the flag of Cuba.
 */
+ (UIImage * _Nullable)flagCubaWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
