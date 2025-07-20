//
//  UIImage+Switzerland.m
//  CountriesFlags
//

#import "UIImage+Switzerland.h"

@implementation UIImage (Switzerland)

+(UIImage * _Nullable) flagSwitzerlandWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor redColor];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    // horizontal line
    UIRectFill(CGRectMake(size.width / 32.0 * 6.0,
                          size.height / 32.0 * 13.0,
                          size.width / 32.0 * 20.0,
                          size.height / 32.0 * 6.0));
    // vertical line
    UIRectFill(CGRectMake(size.width / 32.0 * 13.0,
                          size.height / 32.0 * 6.0,
                          size.width / 32.0 * 6.0,
                          size.height / 32.0 * 20.0));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
