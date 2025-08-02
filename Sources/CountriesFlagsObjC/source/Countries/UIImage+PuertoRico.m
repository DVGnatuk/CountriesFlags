//
//  UIImage+PuertoRico.m
//  CountriesFlags
//

#import "Countries/UIImage+PuertoRico.h"

#import "Extensions/UIBezierPath+Star.h"
#import "Extensions/UIBezierPath+Triangle.h"

@implementation UIImage (PuertoRico)

+ (UIImage * _Nullable)flagPuertoRicoWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:8.0f/255.0f
                                         green:68.0f/255.0f
                                          blue:1.0f
                                         alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:237.0f/255.0f
                                        green:0.0f
                                         blue:0.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 30.0f * 6.0f, size.width, size.height / 30.0f * 6.0f));
    UIRectFill(CGRectMake(0.0f, size.height / 30.0f * 18.0f, size.width, size.height / 30.0f * 6.0f));
    
    [colorBlue setFill];
    [[UIBezierPath triangleInSize:size type:FlagTriangleTypeLeftEquilateral] fill];
    
    [colorWhite setFill];
    [[UIBezierPath starWithSize:CGSizeMake(size.width / 45.0 * 8.660254037844386 * 2.0, size.height)
                         radius:size.height / 30.0f * 10.0f / 2.0f
                           type:FlagStarTypeFivePointed] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
