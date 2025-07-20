//
//  UIImage+CzechRepublic.m
//

#import "UIImage+CzechRepublic.h"

@implementation UIImage (CzechRepublic)

+(UIImage * _Nullable) flagCzechRepublicWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:215.0f/255.0f
                                        green:20.0f/255.0f
                                         blue:26.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorBlue = [UIColor colorWithRed:17.0f/255.0f
                                         green:69.0f/255.0f
                                          blue:126.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 2.0f, size.width, size.height / 2.0f));
    
    [colorBlue setFill];
    UIBezierPath* path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(0.0f, 0.0f)];
    [path addLineToPoint:CGPointMake(size.width / 2.0f, size.height / 2.0f)];
    [path addLineToPoint:CGPointMake(0.0f, size.height)];
    [path closePath];
    [path fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
