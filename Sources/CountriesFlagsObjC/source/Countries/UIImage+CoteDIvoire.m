//
//  UIImage+CoteDIvoire.m
//  CountriesFlags
//

#import "Countries/UIImage+CoteDIvoire.h"

@implementation UIImage (CoteDIvoire)

+ (UIImage * _Nullable)flagCoteDIvoireWithSize:(CGSize)size {
    UIColor* colorOrange = [UIColor colorWithRed:1.0f
                                           green:130.0f/255.0f
                                            blue:0.0f
                                           alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorGreen = [UIColor colorWithRed:0.0f
                                          green:154.0f/255.0f
                                           blue:68.0f/255.0f
                                          alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorOrange setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(size.width / 3.0f, 0.0f, size.width / 3.0f, size.height));
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(size.width / 3.0f * 2.0f, 0.0f, size.width / 3.0f, size.height));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
