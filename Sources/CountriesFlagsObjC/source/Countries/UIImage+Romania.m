//
//  UIImage+Romania.m
//  CountriesFlags
//  

#import "Countries/UIImage+Romania.h"

@implementation UIImage (Romania)

+ (UIImage * _Nullable)flagRomaniaWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:43.0/255.0
                                          blue:127.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:252.0f/255.0f
                                           green:209.0f/255.0f
                                            blue:22.0f/255.0f
                                           alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:206.0f/255.0f
                                        green:17.0f/255.0f
                                         blue:38.0f/255.0f
                                        alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorYellow setFill];
    UIRectFill(CGRectMake(size.width / 3.0f, 0.0f, size.width / 3.0f, size.height));
    
    [colorRed setFill];
    UIRectFill(CGRectMake(size.width / 3.0f * 2.0f, 0.0f, size.width / 3.0f, size.height));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
