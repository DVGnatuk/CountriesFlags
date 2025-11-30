//
//  UIImage+PuertoRico.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (PuertoRico)

/**
 Generates the flag of Puerto Rico.
 
 @param size Image size.
 @returns Returns the flag of Puerto Rico.
 @see https://en.wikipedia.org/wiki/Flag_of_Puerto_Rico
 */
+ (UIImage *)flagPuertoRicoWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
