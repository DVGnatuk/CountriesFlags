//
//  UIBezierPath+Plus.m
//  CountriesFlags
//

#import "Extensions/UIBezierPath+Plus.h"

@implementation UIBezierPath (Plus)

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
