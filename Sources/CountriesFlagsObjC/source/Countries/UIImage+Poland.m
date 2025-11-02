//
//  UIImage+Poland.m
//  CountriesFlags
//

#import "Countries/UIImage+Poland.h"

@implementation UIImage (Poland)

+ (UIImage * _Nullable)flagPolandWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:220.0f/255.0f
                                        green:20.0f/255.0f
                                         blue:60.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 2.0f, size.width, size.height / 2.0f));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
