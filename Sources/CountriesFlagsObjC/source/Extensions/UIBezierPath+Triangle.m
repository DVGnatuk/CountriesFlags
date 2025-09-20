//
//  UIBezierPath+Triangle.m
//  CountriesFlags
//

#import "Extensions/UIBezierPath+Triangle.h"

@implementation UIBezierPath (Extension)

+ (UIBezierPath *)triangleInSize:(CGSize)size type:(FlagTriangleTypes)type {
    UIBezierPath* path = [UIBezierPath bezierPath];

    // Calculate vertex coordinates
    // .left       .right
    // x1 y1       x1 y1
    // |\         /|
    // | \ x3 y3 / |
    // | /       \ |
    // |/         \|
    // x2 y2       x2 y2
    CGFloat x1 = 0.0f;
    CGFloat y1 = 0.0f;
    
    CGFloat x2 = 0.0f;
    CGFloat y2 = size.height;
    
    CGFloat x3 = size.width / 2.0;
    CGFloat y3 = size.height / 2.0f;
    
    switch (type) {
        case FlagTriangleTypeLeftEquilateral:
            x3 = size.height * sin(M_PI / 3); // sin(60 degrees)
            break;
            
        case FlagTriangleTypeRightMiddle:
            x1 = size.width;
            x2 = size.width;
            break;
            
        default:
            break;
    }

    [path moveToPoint:CGPointMake(x1, y1)];
    [path addLineToPoint:CGPointMake(x2, y2)];
    [path addLineToPoint:CGPointMake(x3, y3)];
    [path closePath];

    return path;
}

+ (UIBezierPath *)triangleAtPoint:(CGPoint)point radius:(CGFloat)radius {
    CGFloat height = radius * sqrt(3) / 2.0f;
    UIBezierPath* path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(point.x, point.y - height / 2.0f)];
    [path addLineToPoint:CGPointMake(point.x - radius / 2.0f, point.y + height / 2.0f)];
    [path addLineToPoint:CGPointMake(point.x + radius / 2.0, point.y + height / 2.0)];
    [path closePath];

    return path;
}

@end
