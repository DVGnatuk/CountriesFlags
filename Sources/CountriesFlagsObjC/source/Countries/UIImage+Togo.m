//
//  UIImage+Togo.m
//  CountriesFlags
//

#import "Countries/UIImage+Togo.h"

#import "Extensions/UIBezierPath+Extension.h"

@implementation UIImage (Togo)

+ (UIImage * _Nullable)flagTogoWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:210.0f/255.0f
                                        green:16.0f/255.0f
                                         blue:52.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorGreen = [UIColor colorWithRed:0.0f
                                          green:106.0f/255.0f
                                           blue:74.0f/255.0f
                                          alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:1.0f
                                           green:206.0f/255.0f
                                            blue:0.0f
                                           alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorYellow setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 5.0f * 3.0f, size.width, size.height / 5.0f));
    UIRectFill(CGRectMake(0.0f, size.height / 5.0f, size.width, size.height / 5.0f));
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.height / 5.0f * 3.0f, size.height / 5.0f * 3.0f));
    
    [colorWhite setFill];
    CGFloat radius = size.height / 3.0 / 2.0;
    [[UIBezierPath starWithSize:CGSizeMake(size.height / 5.0f * 3.0f, size.height / 5.0f * 3.0f)
                         radius:radius
                           type:FlagStarTypeFivePointed] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
