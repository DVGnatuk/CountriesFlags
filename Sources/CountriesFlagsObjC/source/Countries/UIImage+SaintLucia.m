//
//  UIImage+SaintLucia.m
//  CountriesFlags
//

#import "Countries/UIImage+SaintLucia.h"

@implementation UIImage (SaintLucia)

+ (UIImage * _Nullable)flagSaintLuciaWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:102.0f/255.0f
                                         green:204.0f/255.0f
                                          blue:1.0f
                                         alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorBlack = [UIColor blackColor];
    UIColor* colorYellow = [UIColor colorWithRed:1.0f
                                           green:209.0f/255.0f
                                            blue:0.0f
                                           alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    UIBezierPath* path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(size.width / 72.0f * 24.0f, size.height / 36.0f * 14.83239697 * 2.0f + size.height / 36.0f * 3.16760303)];
    [path addLineToPoint:CGPointMake(size.width / 2.0f, size.height / 36.0f * 3.16760303)];
    [path addLineToPoint:CGPointMake(size.width / 72.0f * 48.0f, size.height / 36.0f * 14.83239697 * 2.0f + size.height / 36.0f * 3.16760303)];
    [path closePath];
    [path fill];

    [colorBlack setFill];
    path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(size.width / 72.0f * 25.6f, size.height / 36.0f * 14.83239697 * 2.0f + size.height / 36.0f * 3.16760303)];
    [path addLineToPoint:CGPointMake(size.width / 2.0f, size.height / 36.0f * 7.16760303)];
    [path addLineToPoint:CGPointMake(size.width / 72.0f * 46.4f, size.height / 36.0f * 14.83239697 * 2.0f + size.height / 36.0f * 3.16760303)];
    [path closePath];
    [path fill];

    [colorYellow setFill];
    path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(size.width / 72.0f * 24.0f, size.height / 36.0f * 14.83239697 * 2.0f + size.height / 36.0f * 3.16760303)];
    [path addLineToPoint:CGPointMake(size.width / 2.0f, size.height / 2.0f)];
    [path addLineToPoint:CGPointMake(size.width / 72.0f * 48.0f, size.height / 36.0f * 14.83239697 * 2.0f + size.height / 36.0f * 3.16760303)];
    [path closePath];
    [path fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
