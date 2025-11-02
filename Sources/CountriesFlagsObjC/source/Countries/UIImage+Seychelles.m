//
//  UIImage+Seychelles.m
//  CountriesFlags
//

#import "Countries/UIImage+Seychelles.h"

@implementation UIImage (Seychelles)

+ (UIImage * _Nullable)flagSeychellesWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:61.0f/255.0f
                                          blue:136.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:252.0f/255.0f
                                           green:217.0f/255.0f
                                            blue:85.0f/255.0f
                                           alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:215.0f/255.0f
                                        green:35.0f/255.0f
                                         blue:35.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorGreen = [UIColor colorWithRed:0.0f
                                          green:123.0f/255.0f
                                           blue:58.0f/255.0f
                                          alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorYellow setFill];
    UIBezierPath* path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(size.width / 6.0f * 2.0f, 0.0f)];
    [path addLineToPoint:CGPointMake(size.width / 6.0f * 4.0f, 0.0f)];
    [path addLineToPoint:CGPointMake(0.0f, size.height)];
    [path closePath];
    [path fill];
    
    [colorRed setFill];
    [path removeAllPoints];
    [path moveToPoint:CGPointMake(size.width / 6.0f * 4.0f, 0.0f)];
    [path addLineToPoint:CGPointMake(size.width, 0.0f)];
    [path addLineToPoint:CGPointMake(size.width, size.height / 3.0f)];
    [path addLineToPoint:CGPointMake(0.0f, size.height)];
    [path closePath];
    [path fill];

    [colorWhite setFill];
    [path removeAllPoints];
    [path moveToPoint:CGPointMake(size.width, size.height / 3.0f)];
    [path addLineToPoint:CGPointMake(size.width, size.height / 3.0f * 2.0f)];
    [path addLineToPoint:CGPointMake(0.0f, size.height)];
    [path closePath];
    [path fill];

    [colorGreen setFill];
    [path removeAllPoints];
    [path moveToPoint:CGPointMake(size.width, size.height / 3.0 * 2.0)];
    [path addLineToPoint:CGPointMake(size.width, size.height)];
    [path addLineToPoint:CGPointMake(0.0f, size.height)];
    [path closePath];
    [path fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
