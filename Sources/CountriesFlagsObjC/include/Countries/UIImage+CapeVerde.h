//
//  UIImage+CapeVerde.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (CapeVerde)

/**
 Generates the flag of Cape Verde.
 
 @param size Image size.
 @returns Returns the flag of Cape Verde.
 @see https://en.wikipedia.org/wiki/Flag_of_Cape_Verde
 */
+ (UIImage *)flagCapeVerdeWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
