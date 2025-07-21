//
//  UIImage+Thailand.m
//  CountriesFlags
//

#import "Countries/UIImage+Thailand.h"

@implementation UIImage (Thailand)

+(UIImage * _Nullable) flagThailandWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:165.0f/255.0f
                                        green:25.0f/255.0f
                                         blue:49.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor colorWithRed:244.0f/255.0f
                                          green:245.0f/255.0f
                                           blue:248.0f/255.0f
                                          alpha:1.0f];
    UIColor* colorBlue = [UIColor colorWithRed:45.0f/255.0f
                                         green:42.0f/255.0f
                                          blue:74.0f/255.0f
                                         alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 6.0f, size.width, size.height / 6.0f * 4.0f));
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 6.0f * 2.0f, size.width, size.height / 6.0f * 2.0f));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
