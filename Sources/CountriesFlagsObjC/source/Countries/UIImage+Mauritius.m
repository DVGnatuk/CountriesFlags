//
//  UIImage+Mauritius.m
//  CountriesFlags
//

#import "Countries/UIImage+Mauritius.h"

@implementation UIImage (Mauritius)

+ (UIImage * _Nullable)flagMauritiusWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:235.0f/255.0f
                                        green:36.0f/255.0f
                                         blue:54.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorBlue = [UIColor colorWithRed:19.0f/255.0f
                                         green:26.0f/255.0f
                                          blue:109.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:1.0f
                                           green:214.0f/255.0f
                                            blue:0.0f
                                           alpha:1.0f];
    UIColor* colorGreen = [UIColor colorWithRed:0.0f
                                          green:166.0f/255.0f
                                           blue:80.0f/255.0f
                                          alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 4.0f, size.width, size.height / 4.0f * 3.0f));
    
    [colorYellow setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 4.0f * 2.0f, size.width, size.height / 4.0f * 2.0f));
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 4.0f * 3.0f, size.width, size.height / 4.0f));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
