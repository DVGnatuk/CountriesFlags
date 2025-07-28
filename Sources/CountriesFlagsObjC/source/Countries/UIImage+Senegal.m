//
//  UIImage+Senegal.m
//  CountriesFlags
//

#import "Countries/UIImage+Senegal.h"

#import "Extensions/UIBezierPath+Extension.h"

@implementation UIImage (Senegal)

+ (UIImage * _Nullable)flagSenegalWithSize:(CGSize)size {
    UIColor* colorGreen = [UIColor colorWithRed:0.0f
                                          green:133.0f/255.0f
                                           blue:63.0f/255.0f
                                          alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:253.0f/255.0f
                                           green:239.0f/255.0f
                                            blue:66.0f/255.0f
                                           alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:227.0f/255.0f
                                        green:27.0f/255.0f
                                         blue:35.0f/255.0f
                                        alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorYellow setFill];
    UIRectFill(CGRectMake(size.width / 3.0, 0.0f, size.width / 3.0, size.height));
    
    [colorRed setFill];
    UIRectFill(CGRectMake(size.width / 3.0 * 2.0, 0.0f, size.width / 3.0, size.height));
    
    [colorGreen setFill];
    CGFloat radius = size.height * 5.0f / 12.0f / 2.0f;
    [[UIBezierPath starWithSize:size
                         radius:radius
                           type:FlagStarTypeFivePointed] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
