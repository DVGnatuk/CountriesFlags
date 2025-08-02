//
//  UIImage+Colombia.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Colombia)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Colombia "wikipedia"
 
 Generates the flag of Colombia.
 For more information see [wikipedia].
 
 @param size: Image size.
 @returns Returns the flag of Colombia.
 */
+ (UIImage * _Nullable)flagColombiaWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
