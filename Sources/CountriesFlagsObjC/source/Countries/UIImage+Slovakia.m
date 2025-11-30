//
//  UIImage+Slovakia.m
//  CountriesFlags
//

#import "Countries/UIImage+Slovakia.h"

@implementation UIImage (Slovakia)

+ (UIImage *)flagSlovakiaWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:37.0f/255.0f
                                         green:74.0f/255.0f
                                          blue:165.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:237.0f/255.0f
                                        green:28.0f/255.0f
                                         blue:36.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 3.0f, size.width, size.height / 3.0f));
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 3.0f * 2.0, size.width, size.height / 3.0f));
    
    [colorWhite setStroke];
    [colorRed setFill];
    UIBezierPath* path = [UIBezierPath bezierPath];
    // draw shield
    [path moveToPoint:CGPointMake(size.width / 90.0f * 15.0f, size.height / 60.0f * 14.5f)];
    [path addCurveToPoint:CGPointMake(size.width / 90.0f * 14.5f, size.height / 60.0f * 28.5f)
            controlPoint1:CGPointMake(size.width / 90.0f * 14.7f, size.height / 60.0f * 18.0f)
            controlPoint2:CGPointMake(size.width / 90.0f * 14.7f, size.height / 60.0f * 20.0f)];
    [path addCurveToPoint:CGPointMake(size.width / 90.0f * 27.0f, size.height / 60.0f * 45.5f)
            controlPoint1:CGPointMake(size.width / 90.0f * 14.8f, size.height / 60.0f * 36.3f)
            controlPoint2:CGPointMake(size.width / 90.0f * 18.1f, size.height / 60.0f * 40.8f)];
    [path addCurveToPoint:CGPointMake(size.width / 90.0f * 39.5f, size.height / 60.0f * 28.5f)
            controlPoint1:CGPointMake(size.width / 90.0f * 40.1f, size.height / 60.0f * 38.8f)
            controlPoint2:CGPointMake(size.width / 90.0f * 39.0f, size.height / 60.0f * 31.0f)];
    [path addCurveToPoint:CGPointMake(size.width / 90.0f * 38.96f, size.height / 60.0f * 14.5f)
            controlPoint1:CGPointMake(size.width / 90.0f * 39.4f, size.height / 60.0f * 20.0f)
            controlPoint2:CGPointMake(size.width / 90.0f * 39.3f, size.height / 60.0f * 18.0f)];
    [path addLineToPoint:CGPointMake(size.width / 90.0f * 15.0f, size.height / 60.0f * 14.5f)];
    [path closePath];
    path.lineWidth = size.width / 90.0f * (9.0f / 10.0f);
    [path fill];
    [path stroke];
    
    // draw central line
    [colorWhite setFill];
    [path removeAllPoints];
    [path moveToPoint:CGPointMake(size.width / 90.0f * 26.0f, size.height / 60.0f * 40.0f)];
    [path addLineToPoint:CGPointMake(size.width / 90.0f * 26.0f, size.height / 60.0f * 22.85f)];
    // bottom left
    [path addLineToPoint:CGPointMake(size.width / 90.0f * 26.0f, size.height / 60.0f * 28.4f)];

    [path addCurveToPoint:CGPointMake(size.width / 90.0f * 19.7f, size.height / 60.0f * 29.0f)
            controlPoint1:CGPointMake(size.width / 90.0f * 24.0f, size.height / 60.0f * 28.3f)
            controlPoint2:CGPointMake(size.width / 90.0f * 22.6f, size.height / 60.0f * 28.4f)];
    [path addCurveToPoint:CGPointMake(size.width / 90.0f * 19.7f, size.height / 60.0f * 25.4f)
            controlPoint1:CGPointMake(size.width / 90.0f * 19.75f, size.height / 60.0f * 27.2f)
            controlPoint2:CGPointMake(size.width / 90.0f * 19.75f, size.height / 60.0f * 27.2f)];
    [path addCurveToPoint:CGPointMake(size.width / 90.0f * 26.0f, size.height / 60.0f * 26.1f)
            controlPoint1:CGPointMake(size.width / 90.0f * 23.6f, size.height / 60.0f * 26.3f)
            controlPoint2:CGPointMake(size.width / 90.0f * 25.0f, size.height / 60.0f * 26.1f)];

    [path addLineToPoint:CGPointMake(size.width / 90.0f * 26.0f, size.height / 60.0f * 22.9f)];
    // middle let
    [path addCurveToPoint:CGPointMake(size.width / 90.0f * 21.0f, size.height / 60.0f * 23.6f)
            controlPoint1:CGPointMake(size.width / 90.0f * 24.0f, size.height / 60.0f * 22.9f)
            controlPoint2:CGPointMake(size.width / 90.0f * 22.6f, size.height / 60.0f * 23.0f)];
    [path addCurveToPoint:CGPointMake(size.width / 90.0f * 21.0f, size.height / 60.0f * 20.0f)
            controlPoint1:CGPointMake(size.width / 90.0f * 21.05f, size.height / 60.0f * 21.8f)
            controlPoint2:CGPointMake(size.width / 90.0f * 21.05f, size.height / 60.0f * 21.8f)];
    [path addCurveToPoint:CGPointMake(size.width / 90.0f * 26.0f, size.height / 60.0f * 20.7f)
            controlPoint1:CGPointMake(size.width / 90.0f * 23.6f, size.height / 60.0f * 20.8f)
            controlPoint2:CGPointMake(size.width / 90.0f * 25.0f, size.height / 60.0f * 20.6f)];
    // top
    [path addCurveToPoint:CGPointMake(size.width / 90.0f * 25.3f, size.height / 60.0f * 16.05f)
            controlPoint1:CGPointMake(size.width / 90.0f * 25.9f, size.height / 60.0f * 19.0f)
            controlPoint2:CGPointMake(size.width / 90.0f * 25.9f, size.height / 60.0f * 18.6f)];
    [path addCurveToPoint:CGPointMake(size.width / 90.0f * 28.8f, size.height / 60.0f * 16.05f)
            controlPoint1:CGPointMake(size.width / 90.0f * 27.05f, size.height / 60.0f * 16.15f)
            controlPoint2:CGPointMake(size.width / 90.0f * 27.05f, size.height / 60.0f * 16.15f)];
    [path addCurveToPoint:CGPointMake(size.width / 90.0f * 28.0f, size.height / 60.0f * 20.7f)
            controlPoint1:CGPointMake(size.width / 90.0f * 28.2f, size.height / 60.0f * 18.5f)
            controlPoint2:CGPointMake(size.width / 90.0f * 28.2f, size.height / 60.0f * 19.0f)];
    // middle right
    [path addCurveToPoint:CGPointMake(size.width / 90.0f * 33.0f, size.height / 60.0f * 20.0f)
            controlPoint1:CGPointMake(size.width / 90.0f * 30.8f, size.height / 60.0f * 20.5f)
            controlPoint2:CGPointMake(size.width / 90.0f * 30.8f, size.height / 60.0f * 20.5f)];
    [path addCurveToPoint:CGPointMake(size.width / 90.0f * 33.0f, size.height / 60.0f * 23.6f)
            controlPoint1:CGPointMake(size.width / 90.0f * 32.95f, size.height / 60.0f * 21.8f)
            controlPoint2:CGPointMake(size.width / 90.0f * 32.95f, size.height / 60.0f * 21.8f)];
    [path addCurveToPoint:CGPointMake(size.width / 90.0f * 28.0f, size.height / 60.0f * 22.9f)
            controlPoint1:CGPointMake(size.width / 90.0f * 30.5f, size.height / 60.0f * 23.0f)
            controlPoint2:CGPointMake(size.width / 90.0f * 30.1f, size.height / 60.0f * 22.9f)];

    [path addLineToPoint:CGPointMake(size.width / 90.0f * 28.0f, size.height / 60.0f * 26.1f)];

    // bottom right
    [path addCurveToPoint:CGPointMake(size.width / 90.0f * 34.3f, size.height / 60.0f * 25.4f)
            controlPoint1:CGPointMake(size.width / 90.0f * 32.0f, size.height / 60.0f * 26.0f)
            controlPoint2:CGPointMake(size.width / 90.0f * 32.0f, size.height / 60.0f * 26.0f)];
    [path addCurveToPoint:CGPointMake(size.width / 90.0f * 34.3f, size.height / 60.0f * 29.0f)
            controlPoint1:CGPointMake(size.width / 90.0f * 34.25f, size.height / 60.0f * 27.2f)
            controlPoint2:CGPointMake(size.width / 90.0f * 34.25f, size.height / 60.0f * 27.2f)];
    [path addCurveToPoint:CGPointMake(size.width / 90.0f * 28.0f, size.height / 60.0f * 28.4f)
            controlPoint1:CGPointMake(size.width / 90.0f * 30.5f, size.height / 60.0f * 28.3f)
            controlPoint2:CGPointMake(size.width / 90.0f * 30.5f, size.height / 60.0f * 28.3f)];

    [path addLineToPoint:CGPointMake(size.width / 90.0f * 28.0f, size.height / 60.0f * 40.0f)];
    [path closePath];
    [path fill];

    // draw cloud
    [colorBlue setFill];
    [path removeAllPoints];
    [path moveToPoint:CGPointMake(size.width / 90.0f * 27.0f, size.height / 60.0f * 45.0f)];
    [path addCurveToPoint:CGPointMake(size.width / 90.0f * 17.3f, size.height / 60.0f * 37.0f)
            controlPoint1:CGPointMake(size.width / 90.0f * 23.8f, size.height / 60.0f * 43.5f)
            controlPoint2:CGPointMake(size.width / 90.0f * 20.0f, size.height / 60.0f * 41.3f)];
    [path addCurveToPoint:CGPointMake(size.width / 90.0f * 23.2f, size.height / 60.0f * 36.3f)
            controlPoint1:CGPointMake(size.width / 90.0f * 19.1f, size.height / 60.0f * 34.0f)
            controlPoint2:CGPointMake(size.width / 90.0f * 21.4f, size.height / 60.0f * 34.0f)];
    [path addCurveToPoint:CGPointMake(size.width / 90.0f * 30.85f, size.height / 60.0f * 36.3f)
            controlPoint1:CGPointMake(size.width / 90.0f * 25.5f, size.height / 60.0f * 31.7f)
            controlPoint2:CGPointMake(size.width / 90.0f * 28.5f, size.height / 60.0f * 31.7f)];
    [path addCurveToPoint:CGPointMake(size.width / 90.0f * 36.61f, size.height / 60.0f * 37.0f)
            controlPoint1:CGPointMake(size.width / 90.0f * 32.6f, size.height / 60.0f * 34.0f)
            controlPoint2:CGPointMake(size.width / 90.0f * 34.6f, size.height / 60.0f * 34.0f)];
    [path addCurveToPoint:CGPointMake(size.width / 90.0f * 27.0f, size.height / 60.0f * 45.0f)
            controlPoint1:CGPointMake(size.width / 90.0f * 33.8f, size.height / 60.0f * 41.3f)
            controlPoint2:CGPointMake(size.width / 90.0f * 30.6f, size.height / 60.0f * 43.2f)];
    [path closePath];
    [path fill];

    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image != nil ? image : [UIImage new];
}

@end
