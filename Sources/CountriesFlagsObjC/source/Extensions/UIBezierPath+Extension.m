//
//  UIBezierPath+Extension.m
//

#import "Extensions/UIBezierPath+Extension.h"

@implementation UIBezierPath (Extension)

+ (UIBezierPath *)starWithSize:(CGSize)size radius:(CGFloat)radius type:(FlagStarTypes)type {
    UIBezierPath* polygonPath = [UIBezierPath bezierPath];

    CGFloat xCenter = size.width / 2.0f;
    CGFloat yCenter = size.height / 2.0f;

    [polygonPath moveToPoint:CGPointMake(xCenter, -radius + yCenter)];

    switch (type) {
        case FlagStarTypeFourPointed: {
            CGFloat innerRadius = radius * 2.0f / 6.0f;
            for (int index = 1; index < 8; index++) {
                CGFloat r = index % 2 == 0 ? radius : innerRadius;
                double angle = -M_PI / 2.0 + index * M_PI / 4.0;

                double x = r * cos(angle);
                double y = r * sin(angle);
                [polygonPath addLineToPoint:CGPointMake(xCenter + x, yCenter + y)];
            }
        }
            break;
            
        case FlagStarTypeFivePointed: {
            double theta = 2.0 * M_PI * 2.0f / 5.0f;
            for (int i = 1; i < 5; i++) {
                double x = radius * sin(i * theta);
                double y = radius * cos(i * theta);
                [polygonPath addLineToPoint:CGPointMake(xCenter + x, yCenter - y)];
//                NSLog(@"Five pointed star: x: %f, y: %f", x, y);
            }
        }
            break;
            
        default:
            break;
    }

    [polygonPath closePath];
    return polygonPath;
}

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
