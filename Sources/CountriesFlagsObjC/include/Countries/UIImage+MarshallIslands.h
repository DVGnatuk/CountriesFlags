//
//  UIImage+MarshallIslands.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (MarshallIslands)

/**
 Generates the flag of the Marshall Islands.
 
 @param size Image size.
 @returns Returns the flag of the Marshall Islands.
 @see https://en.wikipedia.org/wiki/Flag_of_the_Marshall_Islands
 */
+ (UIImage * _Nullable)flagMarshallIslandsWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
