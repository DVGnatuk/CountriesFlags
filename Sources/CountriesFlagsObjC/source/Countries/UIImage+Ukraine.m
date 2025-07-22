//
//  UIImage+Ukraine.m
//  CountriesFlags
//

#import "Countries/UIImage+Ukraine.h"

@implementation UIImage (Ukraine)

+ (UIImage * _Nullable)flagUkraineWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:87.0f/255.0f
                                          blue:184.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:1.0f
                                           green:215.0f/255.0f
                                            blue:0.0f
                                           alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorYellow setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 2.0f, size.width, size.height / 2.0f));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
