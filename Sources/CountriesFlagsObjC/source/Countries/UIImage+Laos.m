//
//  UIImage+Laos.m
//  CountriesFlags
//

#import "Countries/UIImage+Laos.h"

@implementation UIImage (Laos)

+ (UIImage * _Nullable)flagLaosWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:40.0f/255.0f
                                          blue:104.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:206.0f/255.0f
                                        green:17.0f/255.0f
                                         blue:38.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 4.0f, size.width, size.height / 2.0f));
    
    [colorWhite setFill];
    CGFloat radius = size.height / 2.0f * (4.0f / 5.0f);
    [[UIBezierPath bezierPathWithOvalInRect:CGRectMake(size.width / 2.0f - radius / 2.0f,
                                                       size.height / 2.0f - radius / 2.0f,
                                                       radius,
                                                       radius)] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
