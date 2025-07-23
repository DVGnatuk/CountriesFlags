//
//  UIImage+Gabon.m
//  CountriesFlags
//

#import "Countries/UIImage+Gabon.h"

@implementation UIImage (Gabon)

+ (UIImage * _Nullable)flagGabonWithSize:(CGSize)size {
    UIColor* colorGreen = [UIColor colorWithRed:0.0f
                                          green:158.0f/255.0f
                                           blue:96.0f/255.0f
                                          alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:252.0f/255.0f
                                           green:209.0f/255.0f
                                            blue:22.0f/255.0f
                                           alpha:1.0f];
    UIColor* colorBlue = [UIColor colorWithRed:70.0f/255.0f
                                         green:100.0f/255.0f
                                          blue:178.0f/255.0f
                                         alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorYellow setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 3.0f, size.width, size.height / 3.0f));
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 3.0f * 2.0f, size.width, size.height / 3.0f));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
