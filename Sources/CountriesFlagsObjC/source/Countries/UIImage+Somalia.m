//
//  UIImage+Somalia.m
//  CountriesFlags
//

#import "Countries/UIImage+Somalia.h"

#import "Extensions/UIBezierPath+Extension.h"

@implementation UIImage (Somalia)

+ (UIImage * _Nullable)flagSomaliaWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:65.0f/255.0f
                                         green:143.0f/255.0f
                                          blue:222.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    [[UIBezierPath starWithSize:size
                         radius:size.height / 2.0f / 2.0f
                           type:FlagStarTypeFivePointed] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
