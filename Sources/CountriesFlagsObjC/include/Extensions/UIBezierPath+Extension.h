//
//  UIBezierPath+Extension.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, FlagTriangleTypes)  {
    FlagTriangleTypeLeft = 0,
    FlagTriangleTypeLeftEquilateral
};

typedef NS_ENUM(NSUInteger, FlagStarTypes) {
    FlagStarTypeFourPointed = 0,
    FlagStarTypeFivePointed,
    FlagStarTypeSevenPointed
};

@interface UIBezierPath (Extension)

+ (UIBezierPath *)starWithSize:(CGSize)size radius:(CGFloat)radius type:(FlagStarTypes)type;
+ (UIBezierPath *)triangleInSize:(CGSize)size type:(FlagTriangleTypes)type;
+ (UIBezierPath *)plusInSize:(CGSize)size sideWidth:(CGFloat)sideWidth;

@end

NS_ASSUME_NONNULL_END
