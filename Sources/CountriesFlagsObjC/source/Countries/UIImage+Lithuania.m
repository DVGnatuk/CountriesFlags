//
//  UIImage+Lithuania.m
//  CountriesFlags
//

#import "Countries/UIImage+Lithuania.h"

@implementation UIImage (Lithuania)

+ (UIImage * _Nullable)flagLithuaniaWithSize:(CGSize)size {
    UIColor* colorYellow = [UIColor colorWithRed:253.0f/255.0f
                                           green:185.0f/255.0f
                                            blue:19.0f/255.0f
                                           alpha:1.0f];
    UIColor* colorGreen = [UIColor colorWithRed:0.0f
                                          green:106.0f/255.0f
                                           blue:68.0f/255.0f
                                          alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:193.0f/255.0f
                                        green:39.0f/255.0f
                                         blue:45.0f/255.0f
                                        alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorYellow setFill];
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
