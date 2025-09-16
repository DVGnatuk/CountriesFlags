//
//  UIImage+Namibia.m
//  CountriesFlags
//

#import "Countries/UIImage+Namibia.h"

#import "Extensions/UIBezierPath+Star.h"

@implementation UIImage (Namibia)

+ (UIImage * _Nullable)flagNamibiaWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:47.0f/255.0f
                                          blue:108.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:1.0f
                                           green:205.0f/255.0f
                                            blue:0.0f
                                           alpha:1.0f];
    UIColor* colorGreen = [UIColor colorWithRed:0.0f
                                          green:154.0f/255.0f
                                           blue:68.0f/255.0f
                                          alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:200.0f/255.0f
                                        green:16.0f/255.0f
                                         blue:46.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorBlue setFill];
    UIBezierPath* path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointZero];
    [path addLineToPoint:CGPointMake(0.0f, size.height)];
    [path addLineToPoint:CGPointMake(size.width, 0.0f)];
    [path closePath];
    [path fill];

    [colorWhite setStroke];
    [path removeAllPoints];
    [path moveToPoint:CGPointMake(size.width, 0.0)];
    [path addLineToPoint:CGPointMake(0.0, size.height)];
    [path closePath];
    path.lineWidth = size.width / 100.0f * 22.2f;
    [path stroke];

    [colorRed setStroke];
    path.lineWidth = size.width / 100.0f * 16.7f;
    [path stroke];
    
    [colorYellow setFill];
    CGPoint starPoint = CGPointMake(size.width / 100.0f * 20.0f, size.height / 50.0f * 13.6f);
    CGFloat starRadius = size.height / 24.0f * 8.0f / 2.0f;
    [[UIBezierPath starAtPoint:starPoint
                        radius:starRadius
                   innerRadius:starRadius * 0.6
                          type:FlagStarTypeTwelvePointed] fill];

    [colorBlue setStroke];
    path = [UIBezierPath bezierPathWithArcCenter:starPoint
                                          radius:starRadius * 0.55
                                      startAngle:0.0f
                                        endAngle:M_PI * 2.0f
                                       clockwise:YES];
    path.lineWidth = starRadius * 0.55f / 6.0f;
    [path stroke];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
