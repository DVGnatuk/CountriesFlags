//
//  UIImage+Monaco.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Monaco)

/**
 Generates the flag of Monaco.
 
 @param size Image size.
 @returns Returns the flag of Monaco.
 @see https://en.wikipedia.org/wiki/Flag_of_Monaco
 */
+ (UIImage * _Nullable)flagMonacoWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
