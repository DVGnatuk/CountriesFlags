//
//  UIImage+Sudan.m
//  CountriesFlags
//

#import "Countries/UIImage+Sudan.h"

#import "Extensions/UIBezierPath+Triangle.h"

@implementation UIImage (Sudan)

+ (UIImage * _Nullable)flagSudanWithSize:(CGSize)size {
    UIColor* colorGreen = [UIColor colorWithRed:0.0f
                                          green:114.0f/255.0f
                                           blue:41.0f/255.0f
                                          alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:210.0f/255.0f
                                        green:16.0f/255.0f
                                         blue:52.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorBlack = [UIColor blackColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 3.0f, size.width, size.height / 3.0f));
    
    [colorBlack setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 3.0f * 2.0f, size.width, size.height / 3.0f));
    
    [colorGreen setFill];
    [[UIBezierPath triangleInSize:CGSizeMake(size.width / 6.0f * 2.0f, size.height)
                             type:FlagTriangleTypeLeft] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
