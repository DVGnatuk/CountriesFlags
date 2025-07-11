//
//  UIImage+Poland.m
//

#import "UIImage+Poland.h"

@implementation UIImage (Poland)

+(UIImage * _Nullable) flagPolandWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:220.0f/255.0f
                                        green:20.0f/255.0f
                                         blue:60.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContext(size);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [colorWhite CGColor]);
    CGContextFillRect(context, CGRectMake(0.0, 0, size.width, size.height));
    
    CGContextSetFillColorWithColor(context, [colorRed CGColor]);
    CGContextFillRect(context, CGRectMake(0, size.height / 2.0, size.width, size.height / 2.0));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
