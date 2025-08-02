//
//  UIImage+CzechRepublic.h
//  CountriesFlags
//  

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (CzechRepublic)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_the_Czech_Republic "wikipedia"
 
 Generates the flag of the Czech Republic.
 For more information see [wikipedia].
 
 @param size: Image size.
 @returns Returns the flag of the Czech Republic.
 */
+ (UIImage * _Nullable)flagCzechRepublicWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
