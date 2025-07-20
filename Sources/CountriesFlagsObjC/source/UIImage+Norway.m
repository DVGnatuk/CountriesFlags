//
//  UIImage+Norway.m
//  CountriesFlags
//

#import "UIImage+Norway.h"

@implementation UIImage (Norway)

+(UIImage * _Nullable) flagNorwayWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:32.0f/255.0f
                                          blue:91.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:186.0f/255.0f
                                        green:12.0f/255.0f
                                         blue:47.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    // horizontal line
    UIRectFill(CGRectMake(0, size.height / 16.0 * 6.0, size.width, size.height / 16.0 * 4.0));
    // vertical line
    UIRectFill(CGRectMake(size.width / 22.0 * 6.0, 0.0, size.width / 22.0 * 4.0, size.height));
    
    [colorBlue setFill];
    // horizontal line
    UIRectFill(CGRectMake(0, size.height / 16.0 * 7.0, size.width, size.height / 16.0 * 2.0));
    // vertical line
    UIRectFill(CGRectMake(size.width / 22.0 * 7.0, 0.0, size.width / 22.0 * 2.0, size.height));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
