//
//  UIImage+Liberia.m
//  CountriesFlags
//

#import "Countries/UIImage+Liberia.h"

#import "Extensions/UIBezierPath+Star.h"

@implementation UIImage (Liberia)

+ (UIImage * _Nullable)flagLiberiaWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:40.0f/255.0f
                                          blue:104.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorRed = [UIColor colorWithRed:191.0f/255.0f
                                        green:10.0f/255.0f
                                         blue:48.0f/255.0f
                                        alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    for (int i = 1; i <= 9; i += 2) {
        UIRectFill(CGRectMake(0.0f, size.height / 11.0f * i, size.width, size.height / 11.0f));
    }
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.height / 11.0f * 5.0f, size.height / 11.0f * 5.0f));
    
    [colorWhite setFill];
    [[UIBezierPath starAtPoint:CGPointMake(size.height / 11.0f * 2.5f, size.height / 11.0f * 2.5f)
                        radius:(size.height / 11.0f * 3.0f) / 2.0f
                          type:FlagStarTypeFivePointed] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
