//
//  UIImage+Botswana.m
//  CountriesFlags
//

#import "Countries/UIImage+Botswana.h"

@implementation UIImage (Botswana)

+ (UIImage *)flagBotswanaWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:171.0f/255.0f
                                         green:202.0f/255.0f
                                          blue:233.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorBlack = [UIColor blackColor];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 24.0 * 9.0, size.width, size.height / 24.0 * 6.0));
    
    [colorBlack setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 24.0 * 10.0, size.width, size.height / 24.0 * 4.0));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image != nil ? image : [UIImage new];
}

@end
