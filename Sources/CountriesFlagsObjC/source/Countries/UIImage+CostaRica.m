//
//  UIImage+CostaRica.m
//  CountriesFlags
//

#import "Countries/UIImage+CostaRica.h"

@implementation UIImage (CostaRica)

+ (UIImage *)flagCostaRicaWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:218.0f/255.0f
                                        green:41.0f/255.0f
                                         blue:28.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:20.0f/255.0f
                                          blue:137.0f/255.0f
                                         alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 6.0f, size.width, size.height / 6.0f * 4.0f));
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 6.0f * 2.0f, size.width, size.height / 6.0f * 2.0f));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image != nil ? image : [UIImage new];
}

@end
