//
//  UIImage+Djibouti.m
//  CountriesFlags
//

#import "Countries/UIImage+Djibouti.h"

#import "Extensions/UIBezierPath+Star.h"
#import "Extensions/UIBezierPath+Triangle.h"

@implementation UIImage (Djibouti)

+ (UIImage * _Nullable)flagDjiboutiWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:106.0f/255.0f
                                         green:178.0f/255.0f
                                          blue:231.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorGreen = [UIColor colorWithRed:18.0f/255.0f
                                          green:173.0f/255.0f
                                           blue:43.0f/255.0f
                                          alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:215.0f/255.0f
                                        green:20.0f/255.0f
                                         blue:26.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 2.0f, size.width, size.height / 2.0f));
    
    [colorWhite setFill];
    [[UIBezierPath triangleInSize:CGSizeMake(size.width / 1280.0f * 1480.0f, size.height)
                             type:FlagTriangleTypeLeftMiddle] fill];
    
    [colorRed setFill];
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 1200.0f * 265.0f, size.height / 100.0f * 51.3f)
                        radius:size.height / 850.0f * 117.5f
                          type:FlagStarTypeFivePointed] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
