//
//  UIImage+TimorLeste.m
//  CountriesFlags
//

#import "Countries/UIImage+TimorLeste.h"

#import "Extensions/UIBezierPath+Triangle.h"
#import "Extensions/UIBezierPath+Star.h"
#import "Extensions/UIBezierPath+AffineTransform.h"

@implementation UIImage (TimorLeste)

+ (UIImage * _Nullable)flagTimorLesteWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:218.0f/255.0f
                                        green:41.0f/255.0f
                                         blue:28.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorBlack = [UIColor blackColor];
    UIColor* colorYellow = [UIColor colorWithRed:1.0f
                                           green:199.0f/255.0f
                                            blue:44.0f/255.0f
                                           alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorYellow setFill];
    [[UIBezierPath triangleInSize:size type:FlagTriangleTypeLeftMiddle] fill];
    
    [colorBlack setFill];
    [[UIBezierPath triangleInSize:CGSizeMake(size.width / 36.0f * 24.0f, size.height)
                             type:FlagTriangleTypeLeftMiddle] fill];
    
    [colorWhite setFill];
    CGPoint starCenter = CGPointMake(size.width / 36.0f * 4.0f, size.height / 2.0f);
    CGFloat radius = size.height / 18.0 * 6.0 / 2.0;
    UIBezierPath* path = [UIBezierPath starAtPoint:starCenter radius:radius type:FlagStarTypeFivePointed];
    [path rotateToAngle:-atan(4.0 / 9.0) * 180.0 / M_PI center:starCenter];
    [path fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
