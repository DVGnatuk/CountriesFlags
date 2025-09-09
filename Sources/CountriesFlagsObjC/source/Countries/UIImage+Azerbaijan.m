//
//  UIImage+Azerbaijan.m
//  CountriesFlags
//

#import "Countries/UIImage+Azerbaijan.h"

#import "Extensions/UIBezierPath+Star.h"

@implementation UIImage (Azerbaijan)

+ (UIImage * _Nullable)flagAzerbaijanWithSize:(CGSize)size {
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:181.0f/255.0f
                                          blue:226.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:239.0f/255.0f
                                        green:54.0f/255.0f
                                         blue:61.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorGreen = [UIColor colorWithRed:80.0f/255.0f
                                          green:158.0f/255.0f
                                           blue:47.0f/255.0f
                                          alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 3.0f, size.width, size.height / 3.0f));
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 3.0f * 2.0f, size.width, size.height / 3.0f));
    
    [colorWhite setFill];
    [[UIBezierPath bezierPathWithArcCenter:CGPointMake(size.width / 1920.0f * 912.0f, size.height / 2.0f)
                                    radius:size.height / 10.0f * 3.0f / 2.0f
                                startAngle:0.0f
                                  endAngle:M_PI * 2.0f
                                 clockwise:YES] fill];

    [colorRed setFill];
    [[UIBezierPath bezierPathWithArcCenter:CGPointMake(size.width / 1920.0f * 912.0f + size.height / 30.0f, size.height / 2.0f)
                                    radius:size.height / 4.0f / 2.0f
                                startAngle:0.0f
                                  endAngle:M_PI * 2.0f
                                 clockwise:YES] fill];
    
    [colorWhite setFill];
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 1920.0f * 1074.0f, size.height / 2.0f)
                        radius:size.height / 12.0f
                          type:FlagStarTypeEightPointed] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
