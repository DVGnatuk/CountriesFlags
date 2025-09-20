//
//  UIBezierPath+Triangle.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, FlagTriangleTypes)  {
    FlagTriangleTypeLeftMiddle = 0,
    FlagTriangleTypeLeftEquilateral,
    FlagTriangleTypeRightMiddle
};

@interface UIBezierPath (Extension)

+ (UIBezierPath *)triangleInSize:(CGSize)size type:(FlagTriangleTypes)type;
+ (UIBezierPath *)triangleAtPoint:(CGPoint)point radius:(CGFloat)radius;

@end

NS_ASSUME_NONNULL_END
