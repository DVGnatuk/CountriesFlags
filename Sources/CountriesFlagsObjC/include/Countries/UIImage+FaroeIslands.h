//
//  UIImage+FaroeIslands.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (FaroeIslands)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_the_Faroe_Islands "wikipedia"
 
 Generates the flag of the Faroe Islands.
 For more information see [wikipedia].
 
 @param size: Image size.
 @returns Returns the flag of the Faroe Islands.
 */
+ (UIImage * _Nullable)flagFaroeIslandsWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
