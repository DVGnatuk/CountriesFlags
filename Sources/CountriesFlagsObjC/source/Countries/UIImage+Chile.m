//
//  UIImage+Chile.m
//  CountriesFlags
//

#import "Countries/UIImage+Chile.h"

#import "Extensions/UIBezierPath+Star.h"

@implementation UIImage (Chile)

+ (UIImage * _Nullable)flagChileWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:213.0f/255.0f
                                        green:43.0f/255.0f
                                         blue:30.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:57.0f/255.0f
                                          blue:166.0f/255.0f
                                         alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 2.0f, size.width, size.height / 2.0f));
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.height / 2.0, size.height / 2.0f));
    
    [colorWhite setFill];
    CGFloat radius = size.height / 3.0 / 2.0;
    [[UIBezierPath starWithSize:CGSizeMake(size.height / 2.0f, size.height / 2.0f)
                         radius:radius
                           type:FlagStarTypeFivePointed] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
