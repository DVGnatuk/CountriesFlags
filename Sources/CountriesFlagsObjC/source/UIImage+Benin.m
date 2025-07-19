//
//  UIImage+Benin.m
//  

#import "UIImage+Benin.h"

@implementation UIImage (Benin)

+(UIImage * _Nullable) flagBeninWithSize:(CGSize)size {
    UIColor* colorGreen = [UIColor colorWithRed:0.0f
                                          green:136.0f/255.0f
                                           blue:80.0f/255.0f
                                          alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:252.0f/255.0f
                                           green:210.0f/255.0f
                                            blue:15.0f/255.0f
                                           alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:233.0f/255.0f
                                        green:9.0f/255.0f
                                         blue:41.0f/255.0f
                                        alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorYellow setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 2.0f, size.width, size.height / 2.0f));
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width / 3.0f, size.height));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
