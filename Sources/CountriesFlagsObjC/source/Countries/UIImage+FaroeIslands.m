//
//  UIImage+FaroeIslands.m
//  CountriesFlags
//

#import "Countries/UIImage+FaroeIslands.h"

@implementation UIImage (FaroeIslands)

+(UIImage * _Nullable) flagFaroeIslandsWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:94.0f/255.0f
                                          blue:185.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:239.0f/255.0f
                                        green:48.0f/255.0f
                                         blue:62.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorBlue setFill];
    // horizontal line
    UIRectFill(CGRectMake(0, size.height / 16.0 * 6.0, size.width, size.height / 16.0 * 4.0));
    // vertical line
    UIRectFill(CGRectMake(size.width / 22.0 * 6.0, 0.0, size.width / 22.0 * 4.0, size.height));
    
    [colorRed setFill];
    // horizontal line
    UIRectFill(CGRectMake(0, size.height / 16.0 * 7.0, size.width, size.height / 16.0 * 2.0));
    // vertical line
    UIRectFill(CGRectMake(size.width / 22.0 * 7.0, 0.0, size.width / 22.0 * 2.0, size.height));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
