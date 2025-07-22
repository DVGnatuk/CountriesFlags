//
//  UIBezierPath+Extension.m
//

#import "Extensions/UIBezierPath+Extension.h"

@implementation UIBezierPath (Extension)

+ (UIBezierPath *)triangleInSize:(CGSize)size type:(FlagTriangleTypes)type {
    UIBezierPath* path = [UIBezierPath bezierPath];

    // Calculate vertex coordinates
    // x1 y1
    // |\
    // | \ x3 y3
    // | /
    // |/
    // x2 y2
    CGFloat x1 = 0.0f;
    CGFloat y1 = 0.0f;
    CGFloat x2 = 0.0f;
    CGFloat y2 = size.height;
    CGFloat x3 = 0.0f;//size.height * sin(M_PI / 3); // sin(60 degrees)
    switch (type) {
        case FlagTriangleTypeLeftEquilateral:
            x3 = size.height * sin(M_PI / 3); // sin(60 degrees)
            break;
            
        default:
            x3 = size.width;
            break;
    }
    CGFloat y3 = size.height / 2.0f;

    [path moveToPoint:CGPointMake(x1, y1)];
    [path addLineToPoint:CGPointMake(x2, y2)];
    [path addLineToPoint:CGPointMake(x3, y3)];
    [path closePath];

    return path;
}

+ (UIBezierPath *)plusInSize:(CGSize)size sideWidth:(CGFloat)sideWidth {
    CGFloat xOffset = size.width / 2.0f - sideWidth * 3.0f / 2.0f;
    CGFloat yOffset = size.height / 2.0f - sideWidth * 3.0f / 2.0f;

    UIBezierPath* path = [UIBezierPath bezierPath];
    // top
    [path moveToPoint:CGPointMake(xOffset + sideWidth, yOffset)];
    [path addLineToPoint:CGPointMake(xOffset + sideWidth * 2.0f, yOffset)];
    [path addLineToPoint:CGPointMake(xOffset + sideWidth * 2.0f, yOffset + sideWidth)];
    // right
    [path addLineToPoint:CGPointMake(xOffset + sideWidth * 3.0f, yOffset + sideWidth)];
    [path addLineToPoint:CGPointMake(xOffset + sideWidth * 3.0f, yOffset + sideWidth * 2.0f)];
    [path addLineToPoint:CGPointMake(xOffset + sideWidth * 2.0f, yOffset + sideWidth * 2.0f)];
    // bottom
    [path addLineToPoint:CGPointMake(xOffset + sideWidth * 2.0, yOffset + sideWidth * 3.0f)];
    [path addLineToPoint:CGPointMake(xOffset + sideWidth, yOffset + sideWidth * 3.0f)];
    [path addLineToPoint:CGPointMake(xOffset + sideWidth, yOffset + sideWidth * 2.0f)];
    // left
    [path addLineToPoint:CGPointMake(xOffset, yOffset + sideWidth * 2.0f)];
    [path addLineToPoint:CGPointMake(xOffset, yOffset + sideWidth)];
    [path addLineToPoint:CGPointMake(xOffset + sideWidth, yOffset + sideWidth)];
    [path closePath];

    return path;
}

@end
