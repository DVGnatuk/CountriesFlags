//
//  UIImage+Latvia.m
//  CountriesFlags
//

#import "Countries/UIImage+Latvia.h"

@implementation UIImage (Latvia)

+ (UIImage * _Nullable)flagLatviaWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:157.0f/255.0f
                                        green:34.0f/255.0f
                                         blue:53.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 5.0f * 2.0f, size.width, size.height / 5.0f));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
