//
//  UIBezierPath+Extension.h
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, FlagTriangleTypes)  {
    FlagTriangleTypeLeft = 0,
    FlagTriangleTypeLeftEquilateral
};

@interface UIBezierPath (Extension)

+ (UIBezierPath *)starWithSize:(CGSize)size radius:(CGFloat)radius;
+ (UIBezierPath *)triangleInSize:(CGSize)size type:(FlagTriangleTypes)type;
+ (UIBezierPath *)plusInSize:(CGSize)size sideWidth:(CGFloat)sideWidth;

@end

NS_ASSUME_NONNULL_END
