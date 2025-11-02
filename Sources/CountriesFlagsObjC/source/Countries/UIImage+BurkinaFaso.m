//
//  UIImage+BurkinaFaso.m
//  CountriesFlags
//

#import "Countries/UIImage+BurkinaFaso.h"

#import "Extensions/UIBezierPath+Star.h"
#import "Extensions/CGSize+Extension.h"

@implementation UIImage (BurkinaFaso)

+ (UIImage * _Nullable)flagBurkinaFasoWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:239.0f/255.0f
                                        green:43.0f/255.0f
                                         blue:45.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:252.0f/255.0f
                                           green:209.0f/255.0f
                                            blue:22.0f/255.0f
                                           alpha:1.0f];
    UIColor* colorGreen = [UIColor colorWithRed:0.0f
                                          green:158.0f/255.0f
                                           blue:73.0f/255.0f
                                          alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 2.0f, size.width, size.height / 2.0f));
    
    [colorYellow setFill];
    CGFloat radius = (size.height * 7.0f / 20.0f) / 2.0f;
    [[UIBezierPath starAtPoint:CGSizeMidPoint(size)
                        radius:radius
                          type:FlagStarTypeFivePointed] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
