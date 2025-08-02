//
//  UIImage+AlandIslands.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (AlandIslands)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Åland "wikipedia"
 
 Generates the flag of Aland islands.
 For more information see [wikipedia].

 @param size: Image size.
 @returns Returns the flag of Aland islands.
 */
+ (UIImage * _Nullable)flagAlandIslandsWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
