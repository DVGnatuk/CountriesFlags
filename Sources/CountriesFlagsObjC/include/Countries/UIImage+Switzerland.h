//
//  UIImage+Switzerland.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Switzerland)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Switzerland "wikipedia"
 
 Generates the flag of Switzerland.
 For more information see [wikipedia].
 
 @param size: Image size.
 @returns Returns the flag of Switzerland.
 */
+ (UIImage * _Nullable)flagSwitzerlandWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
