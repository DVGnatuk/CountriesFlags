//
//  UIImage+Bulgaria.m
//  CountriesFlags
//

#import "UIImage+Bulgaria.h"

@implementation UIImage (Bulgaria)

+(UIImage * _Nullable) flagBulgariaWithSize:(CGSize)size {
    UIColor* colorGreen = [UIColor colorWithRed:0.0f
                                          green:153.0f/255.0f
                                           blue:0.0f
                                          alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:204.0f/255.0f
                                        green:0.0f
                                         blue:0.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 3.0f, size.width, size.height / 3.0f));
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 3.0f * 2.0f, size.width, size.height / 3.0f));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
