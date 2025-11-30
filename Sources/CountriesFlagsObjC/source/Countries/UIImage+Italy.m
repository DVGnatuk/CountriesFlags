//
//  UIImage+Italy.m
//  CountriesFlags
//

#import "Countries/UIImage+Italy.h"

@implementation UIImage (Italy)

+ (UIImage *)flagItalyWithSize:(CGSize)size {
    UIColor* colorGreen = [UIColor colorWithRed:0.0f
                                          green:140.0f / 255.0f
                                           blue:69.0f / 255.0f
                                          alpha:1.0f];
    UIColor* colorWhite = [UIColor colorWithRed:244.0f / 255.0f
                                          green:245.0f / 255.0f
                                           blue:240.0f / 255.0f
                                          alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:205.0f / 255.0f
                                        green:33.0f / 255.0f
                                         blue:41.0f / 255.0f
                                        alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(size.width / 3.0f, 0.0f, size.width / 3.0f, size.height));

    [colorRed setFill];
    UIRectFill(CGRectMake(size.width / 3.0f * 2.0f, 0.0f, size.width / 3.0f, size.height));

    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image != nil ? image : [UIImage new];
}

@end
