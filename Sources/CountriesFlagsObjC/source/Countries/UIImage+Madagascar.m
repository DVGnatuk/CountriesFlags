//
//  UIImage+Madagascar.m
//  CountriesFlags
//

#import "Countries/UIImage+Madagascar.h"

@implementation UIImage (Madagascar)

+ (UIImage * _Nullable)flagMadagascarWithSize:(CGSize)size {
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorWarmRed = [UIColor colorWithRed:249.0f/255.0f
                                            green:66.0f/255.0f
                                             blue:58.0f/255.0f
                                            alpha:1.0f];
    UIColor* colorGreen = [UIColor colorWithRed:0.0f
                                          green:132.0f/255.0f
                                           blue:61.0f/255.0f
                                          alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorWarmRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 2.0f, size.width, size.height / 2.0f));
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width / 3.0f, size.height));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
