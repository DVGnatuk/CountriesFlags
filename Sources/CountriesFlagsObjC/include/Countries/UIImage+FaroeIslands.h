//
//  UIImage+FaroeIslands.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (FaroeIslands)

/**
 Generates the flag of the Faroe Islands.
 
 @param size Image size.
 @returns Returns the flag of the Faroe Islands.
 @see https://en.wikipedia.org/wiki/Flag_of_the_Faroe_Islands
 */
+ (UIImage *)flagFaroeIslandsWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
