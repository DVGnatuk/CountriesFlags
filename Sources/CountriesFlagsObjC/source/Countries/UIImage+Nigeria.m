//
//  UIImage+Nigeria.m
//  CountriesFlags
//  

#import "Countries/UIImage+Nigeria.h"

@implementation UIImage (Nigeria)

+ (UIImage *)flagNigeriaWithSize:(CGSize)size {
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorGreen = [UIColor colorWithRed:0.0f
                                          green:135.0f/255.0f
                                           blue:81.0f/255.0f
                                          alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(size.width / 3.0f, 0.0f, size.width / 3.0f, size.height));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image != nil ? image : [UIImage new];
}

@end
