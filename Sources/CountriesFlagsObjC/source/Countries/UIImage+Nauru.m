//
//  UIImage+Nauru.m
//  CountriesFlags
//

#import "Countries/UIImage+Nauru.h"

#import "Extensions/UIBezierPath+Star.h"

@implementation UIImage (Nauru)

+ (UIImage * _Nullable)flagNauruWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:1.0f/255.0f
                                         green:33.0f/255.0f
                                          blue:105.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:1.0f
                                           green:199.0f/255.0f
                                            blue:44.0f/255.0f
                                           alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorYellow setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 24.0f * 11.0f, size.width, size.height / 24.0f * 2.0f));
    
    [colorWhite setFill];
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 48.0f * 12.0f, size.height / 24.0f * 17.0f)
                        radius:size.height / 24.0f * 4.0f
                          type:FlagStarTypeTwelvePointed] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
