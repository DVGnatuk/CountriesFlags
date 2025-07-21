//
//  UIImage+Netherlands.m
//  CountriesFlags
//  

#import "Countries/UIImage+Netherlands.h"

@implementation UIImage (Netherlands)

+(UIImage * _Nullable) flagNetherlandsWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:30.0f/255.0f
                                         green:71.0f/255.0f
                                          blue:133.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:173.0f/255.0f
                                        green:29.0f/255.0f
                                         blue:37.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 3.0f, size.width, size.height / 3.0f));
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 3.0f * 2.0f, size.width, size.height / 3.0f));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
