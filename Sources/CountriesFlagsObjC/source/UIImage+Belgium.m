//
//  UIImage+Belgium.m
//

#import "UIImage+Belgium.h"

@implementation UIImage (Belgium)

+(UIImage * _Nullable) flagBelgiumWithSize:(CGSize)size {
    UIColor* colorBlack = [UIColor blackColor];
    UIColor* colorRed = [UIColor colorWithRed:239.0f/255.0f
                                        green:51.0f/255.0f
                                         blue:64.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:253.0f/255.0f
                                           green:218.0f/255.0f
                                            blue:36.0f/255.0f
                                           alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorBlack setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorYellow setFill];
    UIRectFill(CGRectMake(size.width / 3.0f, 0.0f, size.width / 3.0f, size.height));
    
    [colorRed setFill];
    UIRectFill(CGRectMake(size.width / 3.0f * 2.0f, 0.0f, size.width / 3.0f, size.height));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
