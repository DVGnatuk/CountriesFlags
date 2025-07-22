//
//  UIImage+Finland.m
//  CountriesFlags
//

#import "Countries/UIImage+Finland.h"

@implementation UIImage (Finland)

+ (UIImage * _Nullable)flagFinlandWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:47.0f/255.0f
                                          blue:108.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorBlue setFill];
    // horizontal line
    UIRectFill(CGRectMake(0.0f, size.height / 11.0f * 4.0f, size.width, size.height / 11.0f * 3.0f));
    // vertical line
    UIRectFill(CGRectMake(size.width / 18.0f * 5.0f, 0.0f, size.width / 18.0f * 3.0f, size.height));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
