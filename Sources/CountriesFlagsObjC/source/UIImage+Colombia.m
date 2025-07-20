//
//  UIImage+Colombia.m
//  CountriesFlags
//

#import "UIImage+Colombia.h"

@implementation UIImage (Colombia)

+(UIImage * _Nullable) flagColombiaWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:48.0f/255.0f
                                          blue:135.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:1.0f
                                           green:205.0f/255.0f
                                            blue:0.0f
                                           alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:200.0f/255.0f
                                        green:16.0f/255.0f
                                         blue:16.0f/255.0f
                                        alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorYellow setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 2.0f, size.width, size.height / 4.0f));
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 4.0f * 3.0f, size.width, size.height / 2.0f * 4.0f));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
