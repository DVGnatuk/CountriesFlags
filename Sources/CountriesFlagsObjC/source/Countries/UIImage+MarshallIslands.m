//
//  UIImage+MarshallIslands.m
//  CountriesFlags
//

#import "Countries/UIImage+MarshallIslands.h"

#import "Extensions/UIBezierPath+Star.h"

@implementation UIImage (MarshallIslands)

+ (UIImage * _Nullable)flagMarshallIslandsWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:56.0f/255.0f
                                          blue:147.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorFulvous = [UIColor colorWithRed:221.0f/255.0f
                                            green:117.0f/255.0f
                                             blue:0.0f
                                            alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorFulvous setFill];
    UIBezierPath* path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(0.0f, size.height / 250.0f * 242.0f)];
    [path addLineToPoint:CGPointMake(size.width, size.height / 250.0f * 53.0f)];
    [path addLineToPoint:CGPointMake(size.width, size.height / 250.0f * 4.0f)];
    [path addLineToPoint:CGPointMake(0.0f, size.height / 250.0f * 238.0f)];
    [path closePath];
    [path fill];

    [colorWhite setFill];
    [path removeAllPoints];
    [path moveToPoint:CGPointMake(0.0f, size.height / 250.0f * 246.0f)];
    [path addLineToPoint:CGPointMake(size.width, size.height / 250.0f * 102.0f)];
    [path addLineToPoint:CGPointMake(size.width, size.height / 250.0f * 53.0f)];
    [path addLineToPoint:CGPointMake(0.0f, size.height / 250.0f * 242.0f)];
    [path closePath];
    [path fill];

    CGFloat radius = size.height / 250.0f * 77.5f;
    CGPoint starCenter = CGPointMake(size.width / 475.0f * 91.27902578, size.height / 250.0f * 91.27902578);
    [[UIBezierPath starAtPoint:starCenter
                        radius:radius
                   innerRadius:radius / 100.0f * 7.7f
                          type:FlagStarTypeFourPointed] fill];
    [[UIBezierPath starAtPoint:starCenter
                        radius:size.height / 250.0f * 55.5f
                   innerRadius:size.height / 250.0f * 24.5f
                          type:FlagStarTypeTwentyFourPointed] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
