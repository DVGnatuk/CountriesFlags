//
//  UIImage+Greece.m
//  CountriesFlags
//

#import "Countries/UIImage+Greece.h"

@implementation UIImage (Greece)

+ (UIImage *)flagGreeceWithSize:(CGSize)size {
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorBlue = [UIColor colorWithRed:13.0f/255.0f
                                         green:94.0f/255.0f
                                          blue:175.0f/255.0f
                                         alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    for (int i = 2; i <= 24; i += 4) {
        UIRectFill(CGRectMake(0.0f, size.height / 18.0f * i, size.width, size.height / 18.0f * 2.0f));
    }
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width / 27.0f * 10.0f, size.height / 18.0f * 10.0f));
    
    [colorWhite setFill];
    // horizontal line
    UIRectFill(CGRectMake(0.0f, size.height / 18.0f * 4.0f, size.width / 27.0f * 10.0f, size.height / 18.0f * 2.0f));
    // vertical line - add 0.5 to remove blue line for small images
    UIRectFill(CGRectMake(size.width / 27.0f * 4.0f, 0.0f, size.width / 27.0f * 2.0f, size.height / 18.0f * 10.5f));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image != nil ? image : [UIImage new];
}

@end
