//
//  UIImage+Luxembourg.m
//  CountriesFlags
//

#import "Countries/UIImage+Luxembourg.h"

@implementation UIImage (Luxembourg)

+ (UIImage * _Nullable)flagLuxembourgWithSize:(CGSize)size {
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorCelestialBlue = [UIColor colorWithRed:0.0f
                                                  green:163.0f/255.0f
                                                   blue:224.0f/255.0f
                                                  alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:239.0f/255.0f
                                        green:51.0f/255.0f
                                         blue:64.0f/255.0f
                                        alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 3.0f, size.width, size.height / 3.0f));
    
    [colorCelestialBlue setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 3.0f * 2.0f, size.width, size.height / 3.0f));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
