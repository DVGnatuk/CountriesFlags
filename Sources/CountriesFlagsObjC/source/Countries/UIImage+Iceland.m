//
//  UIImage+Iceland.m
//  CountriesFlags
//

#import "Countries/UIImage+Iceland.h"

@implementation UIImage (Iceland)

+(UIImage * _Nullable) flagIcelandWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:2.0f/255.0f
                                         green:82.0f/255.0f
                                          blue:156.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:220.0f/255.0f
                                        green:30.0f/255.0f
                                         blue:53.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    // horizontal line
    UIRectFill(CGRectMake(0, size.height / 18.0 * 7.0, size.width, size.height / 18.0 * 4.0));
    // vertical line
    UIRectFill(CGRectMake(size.width / 25.0 * 7.0, 0.0, size.width / 25.0 * 4.0, size.height));
    
    [colorRed setFill];
    // horizontal line
    UIRectFill(CGRectMake(0, size.height / 18.0 * 8.0, size.width, size.height / 18.0 * 2.0));
    // vertical line
    UIRectFill(CGRectMake(size.width / 25.0 * 8.0, 0.0, size.width / 25.0 * 2.0, size.height));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;

}

@end
