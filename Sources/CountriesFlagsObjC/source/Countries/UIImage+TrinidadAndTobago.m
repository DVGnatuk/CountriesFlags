//
//  UIImage+TrinidadAndTobago.m
//  CountriesFlags
//

#import "Countries/UIImage+TrinidadAndTobago.h"

@implementation UIImage (TrinidadAndTobago)

+ (UIImage * _Nullable)flagTrinidadAndTobagoWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:206.0f/255.0f
                                        green:17.0f/255.0f
                                         blue:36.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorBlack = [UIColor blackColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    UIBezierPath* path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointZero];
    [path addLineToPoint:CGPointMake(size.width / 30.0f * 6.0f, 0.0f)];
    [path addLineToPoint:CGPointMake(size.width, size.height)];
    [path addLineToPoint:CGPointMake(size.width / 30.0f * 24.0f, size.height)];
    [path closePath];
    [path fill];
    
    [colorBlack setFill];
    path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(size.width / 30.0f, 0.0f)];
    [path addLineToPoint:CGPointMake(size.width / 30.0f * 5.0f, 0.0f)];
    [path addLineToPoint:CGPointMake(size.width / 30.0f * 29.0f, size.height)];
    [path addLineToPoint:CGPointMake(size.width / 30.0f * 25.0f, size.height)];
    [path closePath];
    [path fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
