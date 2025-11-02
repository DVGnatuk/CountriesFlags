//
//  UIImage+Jamaica.m
//  CountriesFlags
//

#import "Countries/UIImage+Jamaica.h"

#import "Extensions/UIBezierPath+Triangle.h"

@implementation UIImage (Jamaica)

+ (UIImage * _Nullable)flagJamaicaWithSize:(CGSize)size {
    UIColor* colorGreen = [UIColor colorWithRed:0.0f
                                          green:119.0f/255.0f
                                           blue:73.0f/255.0f
                                          alpha:1.0f];
    UIColor* colorGold = [UIColor colorWithRed:1.0f
                                         green:184.0f/255.0f
                                          blue:28.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorBlack = [UIColor blackColor];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorBlack setFill];
    [[UIBezierPath triangleInSize:size type:FlagTriangleTypeLeftMiddle] fill];
    [[UIBezierPath triangleInSize:size type:FlagTriangleTypeRightMiddle] fill];
    
    [colorGold setStroke];
    UIBezierPath* path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointZero];
    [path addLineToPoint:CGPointMake(size.width, size.height)];
    [path closePath];
    path.lineWidth = size.height / 6.0f;
    [path stroke];
    
    [path removeAllPoints];
    [path moveToPoint:CGPointMake(0.0f, size.height)];
    [path addLineToPoint:CGPointMake(size.width, 0.0f)];
    [path closePath];
    path.lineWidth = size.height / 6.0f;
    [path stroke];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
