//
//  UIImage+CzechRepublic.m
//  CountriesFlags
//

#import "Countries/UIImage+CzechRepublic.h"

#import "Extensions/UIBezierPath+Triangle.h"

@implementation UIImage (CzechRepublic)

+ (UIImage * _Nullable)flagCzechRepublicWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:215.0f/255.0f
                                        green:20.0f/255.0f
                                         blue:26.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorBlue = [UIColor colorWithRed:17.0f/255.0f
                                         green:69.0f/255.0f
                                          blue:126.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 2.0f, size.width, size.height / 2.0f));
    
    [colorBlue setFill];
    [[UIBezierPath triangleInSize:size type:FlagTriangleTypeLeftMiddle] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
