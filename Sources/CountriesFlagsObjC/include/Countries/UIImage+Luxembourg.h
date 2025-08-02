//
//  UIImage+Luxembourg.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Luxembourg)

/**
 Generates the flag of Luxembourg.

 @param size Image size.
 @returns Returns the flag of Luxembourg.
 @see https://en.wikipedia.org/wiki/Flag_of_Luxembourg
 */
+ (UIImage * _Nullable)flagLuxembourgWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
