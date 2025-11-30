//
//  UIImage+Burundi.m
//  CountriesFlags
//

#import "Countries/UIImage+Burundi.h"

#import "Extensions/UIBezierPath+Star.h"
#import "Extensions/UIBezierPath+Triangle.h"

@implementation UIImage (Burundi)

+ (UIImage *)flagBurundiWithSize:(CGSize)size {
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorRed = [UIColor colorWithRed:200.0f/255.0f
                                        green:16.0f/255.0f
                                         blue:46.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorGreen = [UIColor colorWithRed:67.0f/255.0f
                                          green:176.0f/255.0f
                                           blue:42.0f/255.0f
                                          alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorGreen setFill];
    [[UIBezierPath triangleInSize:size type:FlagTriangleTypeLeftMiddle] fill];
    [[UIBezierPath triangleInSize:size type:FlagTriangleTypeRightMiddle] fill];

    [colorWhite setStroke];
    UIBezierPath* path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointZero];
    [path addLineToPoint:CGPointMake(size.width, size.height)];
    [path closePath];
    path.lineWidth = size.height / 150.0f * 20.0f;
    [path stroke];

    [path removeAllPoints];
    [path moveToPoint:CGPointMake(0.0f, size.height)];
    [path addLineToPoint:CGPointMake(size.width, 0.0f)];
    [path closePath];
    path.lineWidth = size.height / 150.0f * 20.0f;
    [path stroke];

    [colorWhite setFill];
    [[UIBezierPath bezierPathWithArcCenter:CGPointMake(size.width / 2.0f, size.height / 2.0f)
                                    radius:size.height / 150.0f * 42.5f
                                startAngle:0.0f
                                  endAngle:M_PI * 2.0f
                                 clockwise:YES] fill];

    [colorGreen setStroke];
    [colorRed setFill];
    CGPoint topStarSize = CGPointMake(size.width / 2.0f, size.height / 150.0f * 53.0f);
    CGPoint rightStarSize = CGPointMake(size.width / 250.0f * 144.0f, size.height / 150.0f * 86.0f);
    CGPoint leftStarSize = CGPointMake(size.width / 250.0f * 106.0f, size.height / 150.0f * 86.0f);
    CGFloat starRadius = size.height / 150.0f * 9.0f;
    
    path = [UIBezierPath starAtPoint:topStarSize radius:starRadius type:FlagStarTypeSixPointed];
    path.lineWidth = size.height / 150.0f;
    [path fill];
    [path stroke];
    
    path = [UIBezierPath starAtPoint:rightStarSize radius:starRadius type:FlagStarTypeSixPointed];
    path.lineWidth = size.height / 150.0f;
    [path fill];
    [path stroke];
    
    path = [UIBezierPath starAtPoint:leftStarSize radius:starRadius type:FlagStarTypeSixPointed];
    path.lineWidth = size.height / 150.0f;
    [path fill];
    [path stroke];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image != nil ? image : [UIImage new];
}

@end
