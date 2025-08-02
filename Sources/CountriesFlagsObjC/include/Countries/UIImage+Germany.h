//
//  UIImage+Germany.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Germany)

/**
 [wikipedia]: https://ru.wikipedia.org/wiki/Флаг_Германии "wikipedia"
 
 Generates the flag of Germany.
 For more information see [wikipedia].

 @param size: Image size.
 @returns Returns the flag of Germany.
 */
+ (UIImage * _Nullable)flagGermanyWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
