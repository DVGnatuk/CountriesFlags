//
//  UIImage+Palau.m
//  CountriesFlags
//

#import "Countries/UIImage+Palau.h"

@implementation UIImage (Palau)

+ (UIImage * _Nullable)flagPalauWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:133.0f/255.0f
                                          blue:202.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:1.0f
                                           green:209.0f/255.0f
                                            blue:0.0f
                                           alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    CGFloat radius = size.height * 3.0f / 5.0f;
    UIBezierPath* path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(size.width * 7.0f / 16.0f - radius / 2.0f,
                                                                           size.height / 2.0f - radius / 2.0f,
                                                                           radius,
                                                                           radius)];
    [colorYellow setFill];
    [path fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
