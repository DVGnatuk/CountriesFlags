//
//  UIImage+Austria.m
//

#import "UIImage+Austria.h"

@implementation UIImage (Austria)

+(UIImage * _Nullable) flagAustriaWithSize:(CGSize)size {
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorRed = [UIColor redColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0, 0, size.width, size.height));
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0, size.height / 3.0, size.width, size.height / 3.0));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
