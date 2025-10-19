//
//  UIImage+SovietUnion.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (SovietUnion)

/**
 Generates the flag of the Union of Soviet Socialist Republics.
 
 @param size Image size.
 @returns Returns the flag of the Union of Soviet Socialist Republics.
 @see https://en.wikipedia.org/wiki/Flag_of_the_Soviet_Union
 */
+ (UIImage * _Nullable)flagSovietUnionWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
