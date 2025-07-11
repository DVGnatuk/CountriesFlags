//
//  UIImage+Extension.h
//  CountriesFlags
//

#import "CountriesFlags.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (CountriesFlags)

+ (UIImage * _Nullable)flagForCountry:(CountriesFlags)country size:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
