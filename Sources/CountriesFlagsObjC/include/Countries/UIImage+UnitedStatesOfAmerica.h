//
//  UIImage+UnitedStatesOfAmerica.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (UnitedStatesOfAmerica)

/**
 Generates the flag of the United States.

 @param size Image size.
 @returns Returns the flag of the United States.
 @see https://en.wikipedia.org/wiki/Flag_of_the_United_States
 */
+ (UIImage *)flagUnitedStatesOfAmericaWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
