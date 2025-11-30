//
//  UIImage+SaintKittsAndNevis.m
//  CountriesFlags
//

#import "Countries/UIImage+SaintKittsAndNevis.h"

#import "Extensions/UIBezierPath+Star.h"
#import "Extensions/UIBezierPath+AffineTransform.h"

@implementation UIImage (SaintKittsAndNevis)

+ (UIImage *)flagSaintKittsAndNevisWithSize:(CGSize)size {
    UIColor* colorGreen = [UIColor colorWithRed:0.0f
                                          green:151.0f/255.0f
                                           blue:57.0f/255.0f
                                          alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:1.0f
                                           green:209.0f/255.0f
                                            blue:0.0f
                                           alpha:1.0f];
    UIColor* colorBlack = [UIColor blackColor];
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorRed = [UIColor colorWithRed:200.0f/255.0f
                                        green:16.0f/255.0f
                                         blue:46.0f/255.0f
                                        alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorRed setFill];
    UIBezierPath* path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(0.0f, size.height)];
    [path addLineToPoint:CGPointMake(size.width, size.height)];
    [path addLineToPoint:CGPointMake(size.width, 0.0f)];
    [path closePath];
    [path fill];

    [colorYellow setFill];
    [path removeAllPoints];
    [path moveToPoint:CGPointMake(0.0f, size.height / 854.0f * 639.0f)];
    [path addLineToPoint:CGPointMake(size.width / 1280.0f * 956.0f, 0.0f)];
    [path addLineToPoint:CGPointMake(size.width, 0.0f)];
    [path addLineToPoint:CGPointMake(size.width, size.height / 854.0f * 216.0f)];
    [path addLineToPoint:CGPointMake(size.width / 1280.0f * 324.0f, size.height)];
    [path addLineToPoint:CGPointMake(0.0f, size.height)];
    [path closePath];
    [path fill];

    [colorBlack setFill];
    [path removeAllPoints];
    [path moveToPoint:CGPointMake(0.0f, size.height / 854.0f * 699.0f)];
    [path addLineToPoint:CGPointMake(size.width / 1280.0f * 1048.0f, 0.0f)];
    [path addLineToPoint:CGPointMake(size.width, 0.0f)];
    [path addLineToPoint:CGPointMake(size.width, size.height / 854.0f * 154.0f)];
    [path addLineToPoint:CGPointMake(size.width / 1280.0f * 232.0f, size.height)];
    [path addLineToPoint:CGPointMake(0.0f, size.height)];
    [path closePath];
    [path fill];

    [colorWhite setFill];
    CGPoint starCenter = CGPointMake(size.width / 1280.0f * 400.0f, size.height / 854.0f * 600.0f);
    CGFloat starRadius = size.height / 854.0f * 240.0f / 2.0f;
    path = [UIBezierPath starAtPoint:starCenter
                              radius:starRadius
                                type:FlagStarTypeFivePointed];
    [path rotateToAngle:38.0f center:starCenter];
    [path fill];

    starCenter = CGPointMake(size.width / 1280.0f * 892.5f, size.height / 854.0f * 272.5f);
    path = [UIBezierPath starAtPoint:starCenter
                              radius:starRadius
                                type:FlagStarTypeFivePointed];
    [path rotateToAngle:38.0f center:starCenter];
    [path fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image != nil ? image : [UIImage new];
}

@end
