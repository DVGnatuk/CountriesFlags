//
//  UIImage+SovietUnion.m
//  CountriesFlags
//

#import "Countries/UIImage+SovietUnion.h"

#import "Extensions/UIBezierPath+Star.h"

@implementation UIImage (SovietUnion)

+ (UIImage * _Nullable)flagSovietUnionWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:203.0f/255.0f
                                        green:0.0f
                                         blue:0.0f
                                        alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:1.0f
                                           green:215.0f/255.0f
                                            blue:0.0f
                                           alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorYellow setFill];
    // TODO: rework star
    [colorYellow setFill];
    CGPoint starCenter = CGPointMake(size.width / 100.0f * 16.7f, size.height / 100.0f * 12.5f);
    [[UIBezierPath starAtPoint:starCenter
                        radius:size.height / 16.0
                          type:FlagStarTypeFivePointed] fill];
    [colorRed setFill];
    [[UIBezierPath starAtPoint:starCenter
                        radius:size.height / 24.5
                          type:FlagStarTypeFivePointed] fill];

    [colorYellow setFill];
    // draw hammer
    UIBezierPath* path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(size.width / 1000.0f * 116.0f, size.height / 1000.0f * 290.0f)];
    [path addLineToPoint:CGPointMake(size.width / 1000.0f * 148.0f, size.height / 1000.0f * 227.0f)];
    [path addLineToPoint:CGPointMake(size.width / 1000.0f * 175.0f, size.height / 1000.0f * 234.0f)];
    [path addLineToPoint:CGPointMake(size.width / 1000.0f * 155.3f, size.height / 1000.0f * 273.0f)];
    [path addLineToPoint:CGPointMake(size.width / 1000.0f * 225.0f, size.height / 1000.0f * 406.0f)];
    [path addArcWithCenter:CGPointMake(size.width / 1000.0f * 221.0f, size.height / 1000.0f * 421.8f)
                    radius:size.height / 1000.0f * 16.6f
                startAngle:5.2f * M_PI / 3.0f
                  endAngle:2.0f * M_PI / 3.0f
                 clockwise:YES];
    [path addLineToPoint:CGPointMake(size.width / 1000.0f * 146.0f, size.height / 1000.0f * 290.0f)];
    [path addLineToPoint:CGPointMake(size.width / 1000.0f * 130.9f, size.height / 1000.0f * 320.0f)];
    [path closePath];
    [path fill];

    // TODO: rework sickle
    // draw sickle
    [path removeAllPoints];
    [path moveToPoint:CGPointMake(size.width / 1000.0f * 169.0f, size.height / 1000.0f * 188.0f)];
    [path addCurveToPoint:CGPointMake(size.width / 1000.0f * 141.7f, size.height / 1000.0f * 377.3f)
            controlPoint1:CGPointMake(size.width / 1000.0f * 263.0f, size.height / 1000.0f * 260.5f)
            controlPoint2:CGPointMake(size.width / 1000.0f * 209.9f, size.height / 1000.0f * 492.0f)];
    [path addCurveToPoint:CGPointMake(size.width / 1000.0f * 132.2f, size.height / 1000.0f * 393.2f)
            controlPoint1:CGPointMake(size.width / 1000.0f * 138.1f, size.height / 1000.0f * 390.0f)
            controlPoint2:CGPointMake(size.width / 1000.0f * 138.0f, size.height / 1000.0f * 385.0f)];
    [path addCurveToPoint:CGPointMake(size.width / 1000.0f * 109.0f, size.height / 1000.0f * 437.0f)
            controlPoint1:CGPointMake(size.width / 1000.0f * 125.1f, size.height / 1000.0f * 410.0f)
            controlPoint2:CGPointMake(size.width / 1000.0f * 124.0f, size.height / 1000.0f * 439.0f)];
    [path addCurveToPoint:CGPointMake(size.width / 1000.0f * 105.1f, size.height / 1000.0f * 430.0f)
            controlPoint1:CGPointMake(size.width / 1000.0f * 106.0f, size.height / 1000.0f * 436.0f)
            controlPoint2:CGPointMake(size.width / 1000.0f * 106.0f, size.height / 1000.0f * 436.0f)];
    [path addCurveToPoint:CGPointMake(size.width / 1000.0f * 130.0f, size.height / 1000.0f * 370.0f)
            controlPoint1:CGPointMake(size.width / 1000.0f * 107.0f, size.height / 1000.0f * 387.0f)
            controlPoint2:CGPointMake(size.width / 1000.0f * 125.0f, size.height / 1000.0f * 400.0f)];
    [path addCurveToPoint:CGPointMake(size.width / 1000.0f * 141.0f, size.height / 1000.0f * 359.0f)
            controlPoint1:CGPointMake(size.width / 1000.0f * 133.0f, size.height / 1000.0f * 360.0f)
            controlPoint2:CGPointMake(size.width / 1000.0f * 135.0f, size.height / 1000.0f * 358.0f)];
    [path addLineToPoint:CGPointMake(size.width / 1000.0f * 144.5f, size.height / 1000.0f * 352.5f)];
    [path addCurveToPoint:CGPointMake(size.width / 1000.0f * 169.0f, size.height / 1000.0f * 188.0f)
            controlPoint1:CGPointMake(size.width / 1000.0f * 195.0f, size.height / 1000.0f * 435.0f)
            controlPoint2:CGPointMake(size.width / 1000.0f * 235.0f, size.height / 1000.0f * 270.0f)];
    [path closePath];
    [path fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
