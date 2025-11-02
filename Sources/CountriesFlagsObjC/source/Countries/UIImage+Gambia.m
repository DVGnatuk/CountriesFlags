//
//  UIImage+Gambia.m
//  CountriesFlags
//

#import "Countries/UIImage+Gambia.h"

@implementation UIImage (Gambia)

+ (UIImage * _Nullable)flagGambiaWithSize:(CGSize)size {
    UIColor* colorGreen = [UIColor colorWithRed:28.0f/255.0f
                                          green:119.0f/255.0f
                                           blue:40.0f/255.0f
                                          alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:206.0f/255.0f
                                           green:17.0f/255.0f
                                            blue:38.0f/255.0f
                                           alpha:1.0f];
    UIColor* colorBlue = [UIColor colorWithRed:12.0f/255.0f
                                         green:28.0f/255.0f
                                          blue:140.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 3.0f, size.width, size.height / 3.0f));
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 3.0f * 2.0f, size.width, size.height / 3.0f));
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 18.0f * 7.0f, size.width, size.height / 18.0f * 4.0f));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
