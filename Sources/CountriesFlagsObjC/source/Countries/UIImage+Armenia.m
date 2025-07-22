//
//  UIImage+Armenia.m
//  CountriesFlags
//

#import "Countries/UIImage+Armenia.h"

@implementation UIImage (Armenia)

+ (UIImage * _Nullable)flagArmeniaWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:51.0f/255.0f
                                          blue:160.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:217.0f/255.0f
                                        green:0.0f
                                         blue:18.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorOrange = [UIColor colorWithRed:245.0f/255.0f
                                           green:168.0f/255.0f
                                            blue:0.0f
                                           alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0, 0, size.width, size.height));
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0, size.height / 3.0, size.width, size.height / 3.0));
    
    [colorOrange setFill];
    UIRectFill(CGRectMake(0, size.height / 3.0 * 2.0, size.width, size.height / 3.0));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
