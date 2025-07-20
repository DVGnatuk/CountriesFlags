//
//  UIImage+Ireland.m
//  CountriesFlags
//

#import "UIImage+Ireland.h"

@implementation UIImage (Ireland)

+(UIImage * _Nullable) flagIrelandWithSize:(CGSize)size {
    UIColor* colorGreen = [UIColor colorWithRed:22.0f/255.0f
                                           green:155.0f/255.0f
                                            blue:98.0f/255.0f
                                           alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorRed = [UIColor colorWithRed:1.0f
                                        green:136.0f/255.0f
                                         blue:62.0f/255.0f
                                        alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(size.width / 3.0, 0.0f, size.width / 3.0, size.height));
    
    [colorRed setFill];
    UIRectFill(CGRectMake(size.width / 3.0 * 2.0, 0.0f, size.width / 3.0, size.height));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
