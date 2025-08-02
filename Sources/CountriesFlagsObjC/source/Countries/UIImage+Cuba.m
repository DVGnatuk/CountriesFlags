//
//  UIImage+Cuba.m
//  CountriesFlags
//

#import "Countries/UIImage+Cuba.h"

#import "Extensions/UIBezierPath+Star.h"
#import "Extensions/UIBezierPath+Triangle.h"

@implementation UIImage (Cuba)

+ (UIImage * _Nullable)flagCubaWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:204.0f/255.0f
                                        green:13.0f/255.0f
                                         blue:13.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:37.0f/255.0f
                                          blue:144.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 15.0f * 3.0f, size.width, size.height / 15.0f * 3.0f));
    UIRectFill(CGRectMake(0.0f, size.height / 15.0f * 9.0f, size.width, size.height / 15.0f * 3.0f));
    
    [colorRed setFill];
    [[UIBezierPath triangleInSize: size
                             type: FlagTriangleTypeLeftEquilateral] fill];
    
    [colorWhite setFill];
    // TODO: calc right pos inside triangle
    [[UIBezierPath starWithSize:CGSizeMake(size.width / 30.0f * 9.0f, size.height)
                         radius:size.height / 15.0f * 5.0f / 2.0f
                           type:FlagStarTypeFivePointed] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
