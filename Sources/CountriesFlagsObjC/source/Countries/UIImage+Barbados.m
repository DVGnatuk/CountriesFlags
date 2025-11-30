//
//  UIImage+Barbados.m
//  CountriesFlags
//

#import "Countries/UIImage+Barbados.h"

@implementation UIImage (Barbados)

+ (UIImage *)flagBarbadosWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:1.0f/255.0f
                                         green:38.0f/255.0f
                                          blue:127.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:1.0f
                                           green:199.0f/255.0f
                                            blue:38.0f/255.0f
                                           alpha:1.0f];
    UIColor* colorBlack = [UIColor blackColor];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorYellow setFill];
    UIRectFill(CGRectMake(size.width / 3.0f, 0.0f, size.width / 3.0f, size.height));
    
    [colorBlack setFill];
    UIBezierPath* path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(size.width / 100.0 * 48.2f, size.height / 100.0f * 74.1f)];
    [path addLineToPoint:CGPointMake(size.width / 100.0f * 48.2f, size.height / 100.0f * 60.9f)];
    // left side of trident
    [path addCurveToPoint:CGPointMake(size.width / 100.0f * 42.1f, size.height / 100.0f * 62.2f)
            controlPoint1:CGPointMake(size.width / 100.0f * 47.2f, size.height / 100.0f * 60.9f)
            controlPoint2:CGPointMake(size.width / 100.0f * 43.1f, size.height / 100.0f * 62.2f)];
    [path addCurveToPoint:CGPointMake(size.width / 100.0f * 35.6f, size.height / 100.0f * 32.9f)
            controlPoint1:CGPointMake(size.width / 100.0f * 42.1f, size.height / 100.0f * 50.0f)
            controlPoint2:CGPointMake(size.width / 100.0f * 39.0f, size.height / 100.0f * 41.0f)];
    [path addCurveToPoint:CGPointMake(size.width / 100.0f * 43.1f, size.height / 100.0f * 38.3f)
            controlPoint1:CGPointMake(size.width / 100.0f * 35.6f, size.height / 100.0f * 32.2f)
            controlPoint2:CGPointMake(size.width / 100.0f * 40.0f, size.height / 100.0f * 33.6f)];
    [path addCurveToPoint:CGPointMake(size.width / 100.0f * 41.5f, size.height / 100.0f * 38.4f)
            controlPoint1:CGPointMake(size.width / 100.0f * 42.3f, size.height / 100.0f * 38.25f)
            controlPoint2:CGPointMake(size.width / 100.0f * 41.5f, size.height / 100.0f * 37.3f)];
    [path addCurveToPoint:CGPointMake(size.width / 100.0f * 44.65f, size.height / 100.0f * 57.1f)
            controlPoint1:CGPointMake(size.width / 100.0f * 41.8f, size.height / 100.0f * 39.0f)
            controlPoint2:CGPointMake(size.width / 100.0f * 44.6f, size.height / 100.0f * 50.0f)];
    
    // central part of trident
    [path addLineToPoint:CGPointMake(size.width / 100.0f * 48.2f, size.height / 100.0f * 56.44f)];
    [path addLineToPoint:CGPointMake(size.width / 100.0f * 48.2f, size.height / 100.0f * 37.7f)];
    [path addCurveToPoint:CGPointMake(size.width / 100.0f * 45.3f, size.height / 100.0f * 38.5f)
            controlPoint1:CGPointMake(size.width / 100.0f * 47.5f, size.height / 100.0f * 37.7f)
            controlPoint2:CGPointMake(size.width / 100.0f * 46.0f, size.height / 100.0f * 38.0f)];
    [path addCurveToPoint:CGPointMake(size.width / 100.0f * 49.9f, size.height / 100.0f * 25.7f)
            controlPoint1:CGPointMake(size.width / 100.0f * 47.9f, size.height / 100.0f * 35.0f)
            controlPoint2:CGPointMake(size.width / 100.0f * 49.7f, size.height / 100.0f * 27.5f)];
    [path addCurveToPoint:CGPointMake(size.width / 100.0f * 54.5f, size.height / 100.0f * 38.5f)
            controlPoint1:CGPointMake(size.width / 100.0f * 51.5f, size.height / 100.0f * 32.0f)
            controlPoint2:CGPointMake(size.width / 100.0f * 52.5f, size.height / 100.0f * 35.1f)];
    [path addCurveToPoint:CGPointMake(size.width / 100.0f * 51.6f, size.height / 100.0f * 37.7f)
            controlPoint1:CGPointMake(size.width / 100.0f * 54.0f, size.height / 100.0f * 38.0f)
            controlPoint2:CGPointMake(size.width / 100.0f * 52.1f, size.height / 100.0f * 37.7f)];
    [path addLineToPoint:CGPointMake(size.width / 100.0f * 51.6f, size.height / 100.0f * 56.44f)];
    [path addLineToPoint:CGPointMake(size.width / 100.0f * 55.15f, size.height / 100.0f * 57.1f)];

    // right side of trident
    [path addCurveToPoint:CGPointMake(size.width / 100.0f * 58.0f, size.height / 100.0f * 39.0f)
            controlPoint1:CGPointMake(size.width / 100.0f * 55.1f, size.height / 100.0f * 53.0f)
            controlPoint2:CGPointMake(size.width / 100.0f * 57.1f, size.height / 100.0f * 42.0f)];
    [path addCurveToPoint:CGPointMake(size.width / 100.0f * 56.7f, size.height / 100.0f * 38.3f)
            controlPoint1:CGPointMake(size.width / 100.0f * 58.5f, size.height / 100.0f * 37.0f)
            controlPoint2:CGPointMake(size.width / 100.0f * 57.5f, size.height / 100.0f * 38.1f)];
    [path addCurveToPoint:CGPointMake(size.width / 100.0f * 64.2f, size.height / 100.0f * 32.9f)
            controlPoint1:CGPointMake(size.width / 100.0f * 58.0f, size.height / 100.0f * 35.0f)
            controlPoint2:CGPointMake(size.width / 100.0f * 64.0f, size.height / 100.0f * 32.0f)];
    [path addCurveToPoint:CGPointMake(size.width / 100.0f * 57.7f, size.height / 100.0f * 62.2f)
            controlPoint1:CGPointMake(size.width / 100.0f * 60.9f, size.height / 100.0f * 41.0f)
            controlPoint2:CGPointMake(size.width / 100.0f * 57.7f, size.height / 100.0f * 50.0f)];
    [path addCurveToPoint:CGPointMake(size.width / 100.0f * 51.6f, size.height / 100.0f * 60.9f)
            controlPoint1:CGPointMake(size.width / 100.0f * 56.7f, size.height / 100.0f * 62.2f)
            controlPoint2:CGPointMake(size.width / 100.0f * 52.6f, size.height / 100.0f * 60.9f)];
    [path addLineToPoint:CGPointMake(size.width / 100.0f * 51.6f, size.height / 100.0f * 74.1f)];
    [path closePath];
    [path fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image != nil ? image : [UIImage new];
}

@end
