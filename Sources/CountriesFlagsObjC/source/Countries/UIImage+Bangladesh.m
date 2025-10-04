//
//  UIImage+Bangladesh.m
//  CountriesFlags
//

#import "Countries/UIImage+Bangladesh.h"

@implementation UIImage (Bangladesh)

+ (UIImage * _Nullable)flagBangladeshWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:244.0f/255.0f
                                        green:42.0f/255.0f
                                         blue:65.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorBottleGreen = [UIColor colorWithRed:0.0f
                                                green:106.0f/255.0f
                                                 blue:78.0f/255.0f
                                                alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorBottleGreen setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorRed setFill];
    [[UIBezierPath bezierPathWithArcCenter:CGPointMake(size.width * 2.0f / 5.0f, size.height / 2.0f)
                                    radius:size.height * 4.0f / 10.0f
                                startAngle:0.0f
                                  endAngle:M_PI * 2.0f
                                 clockwise:YES] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
