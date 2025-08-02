//
//  UIImage+Romania.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Romania)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Romania "wikipedia"
 
 Generates the flag of Romania.
 For more information see [wikipedia].

 @param size: Image size.
 @returns Returns the flag of Romania.
 */
+ (UIImage * _Nullable)flagRomaniaWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
