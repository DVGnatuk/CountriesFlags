//
//  UIImage+Netherlands.h
//  CountriesFlags
//  

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Netherlands)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_the_Netherlands "wikipedia"
 
 Generates the flag of Netherlands.
 For more information see [wikipedia].

 @param size: Image size.
 @returns Returns the flag of Netherlands.
 */
+ (UIImage * _Nullable)flagNetherlandsWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
