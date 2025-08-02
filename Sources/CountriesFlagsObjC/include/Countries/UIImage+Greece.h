//
//  UIImage+Greece.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Greece)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Greece "wikipedia"
 
 Generates the flag of Greece.
 For more information see [wikipedia].

 @param size: Image size.
 @returns Returns the flag of Greece.
 */
+ (UIImage * _Nullable)flagGreeceWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
