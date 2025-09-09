//
//  UIImage+Comoros.m
//  CountriesFlags
//

#import "Countries/UIImage+Comoros.h"

#import "Extensions/UIBezierPath+Triangle.h"
#import "Extensions/UIBezierPath+Star.h"

@implementation UIImage (Comoros)

+ (UIImage * _Nullable)flagComorosWithSize:(CGSize)size {
    UIColor* colorGreen = [UIColor colorWithRed:0.0f
                                          green:150.0f/255.0f
                                           blue:57.0f/255.0f
                                          alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:1.0f
                                           green:209.0f/255.0f
                                            blue:0.0f
                                           alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorRed = [UIColor colorWithRed:239.0f/255.0f
                                        green:51.0f/255.0f
                                         blue:64.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:61.0f/255.0f
                                          blue:165.0f/255.0f
                                         alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorYellow setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 4.0f, size.width, size.height / 4.0f));
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 4.0f * 2.0f, size.width, size.height / 4.0f));
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 4.0f * 3.0f, size.width, size.height / 4.0f));
    
    [colorGreen setFill];
    [[UIBezierPath triangleInSize:size type:FlagTriangleTypeLeftMiddle] fill];
    
    [colorWhite setFill];
    CGFloat radius = size.height / 50.0f * 11.8f;
    CGPoint outerCenter = CGPointMake(size.width * 0.17f, size.height / 2.0f);
    [[UIBezierPath bezierPathWithArcCenter:outerCenter
                                    radius:radius
                                startAngle:0.0f
                                  endAngle:M_PI * 2.0f
                                 clockwise:YES] fill];
    [colorGreen setFill];
    radius = size.height / 50.0f * 11.65f;
    CGPoint innerCenter = CGPointMake(size.width * 0.228f, size.height / 2.0f);
    [[UIBezierPath bezierPathWithArcCenter:innerCenter
                                    radius:radius
                                startAngle:0.0f
                                  endAngle:M_PI * 2.0f
                                 clockwise:YES] fill];
    
    [colorWhite setFill];
    CGFloat starRadius = size.height / 50.0f * 2.3f;
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 100.0f * 20.45f, size.height / 100.0f * 34.75f)
                        radius:starRadius
                          type:FlagStarTypeFivePointed] fill];
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 100.0f * 20.45f, size.height / 100.0f * 45.0f)
                        radius:starRadius
                          type:FlagStarTypeFivePointed] fill];
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 100.0f * 20.45f, size.height / 100.0f * 55.45f)
                        radius:starRadius
                          type:FlagStarTypeFivePointed] fill];
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 100.0f * 20.45f, size.height / 100.0f * 65.85f)
                        radius:starRadius
                          type:FlagStarTypeFivePointed] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
