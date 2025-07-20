//
//  UIImage+Bangladesh.m
//  CountriesFlags
//

#import "UIImage+Bangladesh.h"

@implementation UIImage (Bangladesh)

+(UIImage * _Nullable) flagBangladeshWithSize:(CGSize)size {
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
    CGFloat radius = size.height * 4.0f / 5.0f;
    UIBezierPath* path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(size.width * 2.0 / 5.0 - radius / 2.0,
                                                                           size.height / 2.0 - radius / 2.0,
                                                                           radius,
                                                                           radius)];
    [path fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
