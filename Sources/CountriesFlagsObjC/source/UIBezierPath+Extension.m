//
//  UIBezierPath+Extension.m
//

#import "UIBezierPath+Extension.h"

@implementation UIBezierPath (Extension)

+(UIBezierPath *) triangleInSize:(CGSize)size {
    UIBezierPath* path = [UIBezierPath bezierPath];
    CGFloat sideLength = size.height;

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
    CGFloat y2 = sideLength;
    CGFloat x3 = sideLength * sin(M_PI / 3); // sin(60 degrees)
    CGFloat y3 = sideLength / 2.0f;

    [path moveToPoint:CGPointMake(x1, y1)];
    [path addLineToPoint:CGPointMake(x2, y2)];
    [path addLineToPoint:CGPointMake(x3, y3)];
    [path closePath];

    return path;
}

@end
