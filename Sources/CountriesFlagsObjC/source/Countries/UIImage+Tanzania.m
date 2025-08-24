//
//  UIImage+Tanzania.m
//  CountriesFlags
//

#import "Countries/UIImage+Tanzania.h"

@implementation UIImage (Tanzania)

+ (UIImage * _Nullable)flagTanzaniaWithSize:(CGSize)size {
    UIColor* colorGreen = [UIColor colorWithRed:30.0f/255.0f
                                          green:181.0f/255.0f
                                           blue:58.0f/255.0f
                                          alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:252.0f/255.0f
                                           green:209.0f/255.0f
                                            blue:22.0f/255.0f
                                           alpha:1.0f];
    UIColor* colorBlack = [UIColor blackColor];
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:163.0f/255.0f
                                          blue:221.0f/255.0f
                                         alpha:1.0f];

    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorGreen setFill];
    UIBezierPath* path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointZero];
    [path addLineToPoint:CGPointMake(size.width, 0.0f)];
    [path addLineToPoint:CGPointMake(0.0f, size.height)];
    [path closePath];
    [path fill];

    [path removeAllPoints];
    [path moveToPoint:CGPointMake(0.0f, size.height)];
    [path addLineToPoint:CGPointMake(size.width, 0.0f)];
    [path closePath];

    [colorYellow setStroke];
    path.lineWidth = size.height / 854.0f * 340.0f;
    [path stroke];

    [colorBlack setStroke];
    path.lineWidth = size.height / 854.0f * 230.0f;
    [path stroke];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
