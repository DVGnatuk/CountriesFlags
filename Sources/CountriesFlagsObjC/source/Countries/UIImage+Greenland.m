//
//  UIImage+Greenland.m
//  CountriesFlags
//

#import "Countries/UIImage+Greenland.h"

@implementation UIImage (Greenland)

+ (UIImage * _Nullable)flagGreenlandWithSize:(CGSize)size {
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorRed = [UIColor colorWithRed:208.0f/255.0f
                                        green:12.0f/255.0f
                                         blue:51.0f/255.0f
                                        alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 2.0f, size.width, size.height / 2.0f));
    [[UIBezierPath bezierPathWithArcCenter:CGPointMake(size.width / 18.0f * 7.0f, size.height / 2.0f)
                                       radius:size.height / 12.0f * 4.0f
                                   startAngle:0.0f
                                     endAngle:M_PI * 2.0f
                                 clockwise:YES] fill];
    
    [colorWhite setFill];
    [[UIBezierPath bezierPathWithArcCenter:CGPointMake(size.width / 18.0f * 7.0f, size.height / 2.0f)
                                       radius:size.height / 12.0f * 4.0f
                                   startAngle:0.0f
                                     endAngle:M_PI
                                 clockwise:YES] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
