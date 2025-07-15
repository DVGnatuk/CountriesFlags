//
//  UIImage+UnitedArabEmirates.m
//

#import "UIImage+UnitedArabEmirates.h"

@implementation UIImage (UnitedArabEmirates)

+(UIImage * _Nullable) flagUnitedArabEmiratesWithSize:(CGSize)size {
    UIColor* colorGreen = [UIColor colorWithRed:0.0f
                                          green:115.0f/255.0f
                                           blue:47.0f/255.0f
                                          alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:200.0f/255.0f
                                        green:16.0f/255.0f
                                         blue:46.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorBlack = [UIColor blackColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, size.height * 2.0f / 6.0f, size.width, size.height * 2.0f / 6.0f));
    
    [colorBlack setFill];
    UIRectFill(CGRectMake(0.0f, size.height * 4.0f / 6.0f, size.width, size.height * 2.0f / 6.0f));
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f / 6.0f, size.width * 3.0f / 12.0f, size.height));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
