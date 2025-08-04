//
//  UIImage+Japan.m
//  CountriesFlags
//

#import "Countries/UIImage+Japan.h"

@implementation UIImage (Japan)

+ (UIImage * _Nullable)flagJapanWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:188.0f/255.0f
                                        green:0.0f
                                         blue:45.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    CGFloat radius = size.height * 3.0f / 5.0f;
    UIBezierPath* path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(size.width / 2.0 - radius / 2.0,
                                                                           size.height / 2.0 - radius / 2.0,
                                                                           radius,
                                                                           radius)];
    [colorRed setFill];
    [path fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
