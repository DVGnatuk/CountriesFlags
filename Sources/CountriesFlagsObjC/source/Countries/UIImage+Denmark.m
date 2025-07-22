//
//  UIImage+Denmark.m
//  CountriesFlags
//

#import "Countries/UIImage+Denmark.h"

@implementation UIImage (Denmark)

+ (UIImage * _Nullable)flagDenmarkWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:200.0f/255.0f
                                        green:16.0f/255.0f
                                         blue:46.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    // horizontal line
    UIRectFill(CGRectMake(0.0f, size.height / 28.0f * 12.0f, size.width, size.height / 28.0f * 4.0f));
    // vertical line
    UIRectFill(CGRectMake(size.width / 37.0f * 12.0f, 0.0f, size.width / 37.0 * 4.0, size.height));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
