//
//  UIBezierPath+AffineTransform.m
//  CountriesFlags
//

#import "Extensions/UIBezierPath+AffineTransform.h"

@implementation UIBezierPath (Rotate)

- (void)rotateToAngle:(CGFloat)angle center:(CGPoint)center {
    CGFloat radians = angle / 180.0f * M_PI;
    CGAffineTransform transform = CGAffineTransformIdentity;
    transform = CGAffineTransformTranslate(transform, center.x, center.y);
    transform = CGAffineTransformRotate(transform, radians);
    transform = CGAffineTransformTranslate(transform, -center.x, -center.y);
    [self  applyTransform:transform];
}

- (void)translateToPoint:(CGPoint)point {
    CGAffineTransform transform = CGAffineTransformIdentity;
    transform = CGAffineTransformTranslate(transform, point.x, point.y);
    [self applyTransform:transform];
}

@end
