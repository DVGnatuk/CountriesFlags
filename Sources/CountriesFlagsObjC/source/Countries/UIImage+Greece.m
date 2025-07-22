//
//  UIImage+Greece.m
//  CountriesFlags
//

#import "Countries/UIImage+Greece.h"

@implementation UIImage (Greece)

+ (UIImage * _Nullable)flagGreeceWithSize:(CGSize)size {
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorBlue = [UIColor colorWithRed:13.0f/255.0f
                                         green:94.0f/255.0f
                                          blue:175.0f/255.0f
                                         alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 18.0f * 2.0f, size.width, size.height / 18.0f * 2.0f));
    UIRectFill(CGRectMake(0.0f, size.height / 18.0f * 6.0f, size.width, size.height / 18.0f * 2.0f));
    UIRectFill(CGRectMake(0.0f, size.height / 18.0f * 10.0f, size.width, size.height / 18.0f * 2.0f));
    UIRectFill(CGRectMake(0.0f, size.height / 18.0f * 14.0f, size.width, size.height / 18.0f * 2.0f));
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width / 27.0f * 10.0f, size.height / 18.0f * 10.0f));
    
    [colorWhite setFill];
    // horizontal line
    UIRectFill(CGRectMake(0.0f, size.height / 18.0f * 4.0f, size.width / 27.0f * 10.0f, size.height / 18.0f * 2.0f));
    // vertical line
    UIRectFill(CGRectMake(size.width / 27.0f * 4.0f, 0.0f, size.width / 27.0f * 2.0f, size.height / 18.0f * 10.0f));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
