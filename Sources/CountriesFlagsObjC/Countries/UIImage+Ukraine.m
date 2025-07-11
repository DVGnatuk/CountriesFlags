//
//  UIImage+Ukraine.m
//  
//

#import "UIImage+Ukraine.h"

@implementation UIImage (Ukraine)

+(UIImage *) flagUkraineWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:91.0f/255.0f
                                          blue:187.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:1.0f
                                           green:213.0f/255.0f
                                            blue:0.0f
                                           alpha:1.0f];
    
    UIGraphicsBeginImageContext(size);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [colorBlue CGColor]);
    CGContextFillRect(context, CGRectMake(0.0, 0, size.width, size.height));
    
    CGContextSetFillColorWithColor(context, [colorYellow CGColor]);
    CGContextFillRect(context, CGRectMake(0, size.height / 2.0, size.width, size.height / 2.0));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
