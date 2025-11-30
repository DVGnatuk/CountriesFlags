//
//  UIImage+UnitedKingdom.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (UnitedKingdom)

/**
 Generates the flag of the United Kingdom.

 @param size Image size.
 @returns Returns the flag of the United Kingdom.
 @see https://en.wikipedia.org/wiki/Union_Jack
 */
+ (UIImage *)flagUnitedKingdomWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
