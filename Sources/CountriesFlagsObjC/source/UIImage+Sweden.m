//
//  UIImage+Sweden.m
//  CountriesFlags
//

#import "UIImage+Sweden.h"

@implementation UIImage (Sweden)

+(UIImage * _Nullable) flagSwedenWithSize:(CGSize)size {
    UIColor* colorYellow = [UIColor colorWithRed:254.0f/255.0f
                                           green:204.0f/255.0f
                                            blue:2.0f/255.0f
                                           alpha:1.0f];
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:106.0f/255.0f
                                          blue:167.0f/255.0f
                                         alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorYellow setFill];
    // horizontal line
    UIRectFill(CGRectMake(0.0f, size.height / 10.0f * 4.0f, size.width, size.height / 10.0f * 2.0f));
    // vertical line
    UIRectFill(CGRectMake(size.width / 16.0f * 5.0f, 0.0f, size.width / 16.0f * 2.0f, size.height));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
