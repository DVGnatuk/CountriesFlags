//
//  UIImage+Singapore.m
//  CountriesFlags
//

#import "Countries/UIImage+Singapore.h"

#import "Extensions/UIBezierPath+Star.h"

@implementation UIImage (Singapore)

+ (UIImage *)flagSingaporeWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:238.0f/255.0f
                                        green:37.0f/255.0f
                                         blue:54.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height / 2.0f));
    
    [colorWhite setFill];
    CGFloat starRadius = size.height / 36.0f * 6.625f;
    [[UIBezierPath bezierPathWithArcCenter:CGPointMake(size.width / 54.0f * 11.46f, size.height / 36.0f * 9.0f)
                                    radius:starRadius
                                startAngle:0.0f
                                  endAngle:M_PI * 2.0f
                                 clockwise:YES] fill];

    [colorRed setFill];
    [[UIBezierPath bezierPathWithArcCenter:CGPointMake(size.width / 54.0f * 14.44f, size.height / 36.0f * 9.0f)
                                    radius:starRadius
                                startAngle:0.0f
                                  endAngle:M_PI * 2.0f
                                 clockwise:YES] fill];

    [colorWhite setFill];
    starRadius = size.height / 36.0f * 3.45f / 2.0f;
    // top
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 54.0f * 15.05f, size.height / 36.0f * 5.2f)
                        radius:starRadius
                          type:FlagStarTypeFivePointed] fill];
    // left middle
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 54.0f * 11.4f, size.height / 36.0f * 7.85f)
                        radius:starRadius
                          type:FlagStarTypeFivePointed] fill];
    // right middle
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 54.0f * 18.65f, size.height / 36.0f * 7.85f)
                        radius:starRadius
                          type:FlagStarTypeFivePointed] fill];
    // left bottom
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 54.0f * 12.8f, size.height / 36.0f * 12.1f)
                        radius:starRadius
                          type:FlagStarTypeFivePointed] fill];
    // right bottom
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 54.0f * 17.25f, size.height / 36.0f * 12.1f)
                        radius:starRadius
                          type:FlagStarTypeFivePointed] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image != nil ? image : [UIImage new];
}

@end
