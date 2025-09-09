//
//  UIImage+SaoTomeAndPrincipe.m
//  CountriesFlags
//

#import "Countries/UIImage+SaoTomeAndPrincipe.h"

#import "Extensions/UIBezierPath+Triangle.h"
#import "Extensions/UIBezierPath+Star.h"

@implementation UIImage (SaoTomeAndPrincipe)

+ (UIImage * _Nullable)flagSaoTomeAndPrincipeWithSize:(CGSize)size {
    UIColor* colorGreen = [UIColor colorWithRed:0.0f
                                          green:151.0f/255.0f
                                           blue:57.0f/255.0f
                                          alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:1.0f
                                           green:209.0f/255.0f
                                            blue:0.0f
                                           alpha:1.0f];
    UIColor* colorBlack = [UIColor blackColor];
    UIColor* colorRed = [UIColor colorWithRed:239.0f/255.0f
                                        green:51.0f/255.0f
                                         blue:64.0f/255.0f
                                        alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorYellow setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 84.0f * 24.0f, size.width, size.height / 84.0f * 36.0f));
    
    [colorRed setFill];
    [[UIBezierPath triangleInSize:CGSizeMake(size.width / 168.0f * 84.0f, size.height)
                             type:FlagTriangleTypeLeftMiddle] fill];
    
    [colorBlack setFill];
    CGFloat starRadius = size.height / 84.0f * 28.74489303 / 2.0f;
    CGPoint starCenter = CGPointMake(size.width / 2.0f, (size.height + size.height / 84.0f * 1.37244652 * 2.0f) / 2.0f);
    [[UIBezierPath starAtPoint:starCenter
                        radius:starRadius
                          type:FlagStarTypeFivePointed] fill];
    starCenter = CGPointMake(size.width * 1.5f / 2.0f, (size.height + size.height / 84.0f * 1.37244652 * 2.0f) / 2.0f);
    [[UIBezierPath starAtPoint:starCenter
                        radius:starRadius
                          type:FlagStarTypeFivePointed] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
