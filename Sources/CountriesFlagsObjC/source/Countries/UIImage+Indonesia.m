//
//  UIImage+Indonesia.m
//  CountriesFlags
//

#import "Countries/UIImage+Indonesia.h"

@implementation UIImage (Indonesia)

+ (UIImage *)flagIndonesiaWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor redColor];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0, size.height / 2.0, size.width, size.height / 2.0));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image != nil ? image : [UIImage new];
}

@end
