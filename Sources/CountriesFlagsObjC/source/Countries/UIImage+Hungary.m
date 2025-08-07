//
//  UIImage+Hungary.m
//  CountriesFlags
//

#import "Countries/UIImage+Hungary.h"

@implementation UIImage (Hungary)

+ (UIImage * _Nullable)flagHungaryWithSize:(CGSize)size {
    UIColor* colorTomato = [UIColor colorWithRed:206.0f/255.0f
                                           green:41.0f/255.0f
                                            blue:57.0f/255.0f
                                           alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorFairway = [UIColor colorWithRed:71.0f/255.0f
                                            green:112.0f/255.0f
                                             blue:80.0f/255.0f
                                            alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorTomato setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 3.0, size.width, size.height / 3.0));
    
    [colorFairway setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 3.0 * 2.0, size.width, size.height / 3.0));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
