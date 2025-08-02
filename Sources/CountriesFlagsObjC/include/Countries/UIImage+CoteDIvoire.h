//
//  UIImage+CoteDIvoire.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (CoteDIvoire)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Ivory_Coast "wikipedia"
 
 Generates the flag of Côte d'Ivoire.
 For more information see [wikipedia].

 @param size: Image size.
 @returns Returns the flag of Côte d'Ivoire.
 */
+ (UIImage * _Nullable)flagCoteDIvoireWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
