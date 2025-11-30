//
//  UIImage+SolomonIslands.m
//  CountriesFlags
//

#import "Countries/UIImage+SolomonIslands.h"

#import "Extensions/UIBezierPath+Star.h"

@implementation UIImage (SolomonIslands)

+ (UIImage *)flagSolomonIslandsWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:81.0f/255.0f
                                          blue:186.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:252.0f/255.0f
                                         green:209.0f/255.0f
                                          blue:22.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorGreen = [UIColor colorWithRed:33.0f/255.0f
                                         green:91.0f/255.0f
                                          blue:51.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorBlue setFill];
    UIBezierPath* path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointZero];
    [path addLineToPoint:CGPointMake(0.0f, size.height)];
    [path addLineToPoint:CGPointMake(size.width, 0.0f)];
    [path closePath];
    [path fill];

    [colorYellow setStroke];
    [path removeAllPoints];
    [path moveToPoint:CGPointMake(size.width, 0.0f)];
    [path addLineToPoint:CGPointMake(0.0f, size.height)];
    [path closePath];
    path.lineWidth = size.width / 100.0f * 4.37f;
    [path stroke];

    [colorWhite setFill];
    CGFloat starRadius = size.height / 100.0f * 10.0f;
    // center star
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 100.0f * 17.5f, size.height / 100.0f * 30.0f)
                        radius:starRadius
                          type:FlagStarTypeFivePointed] fill];
    // top left star
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 100.0f * 7.65f, size.height / 100.0f * 13.0f)
                        radius:starRadius
                          type:FlagStarTypeFivePointed] fill];
    // bottom left star
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 100.0f * 7.65f, size.height / 100.0f * 47.0f)
                        radius:starRadius
                          type:FlagStarTypeFivePointed] fill];
    // top right star
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 100.0f * 27.35f, size.height / 100.0f * 13.0f)
                        radius:starRadius
                          type:FlagStarTypeFivePointed] fill];
    // top right star
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 100.0f * 27.35f, size.height / 100.0f * 47.0f)
                        radius:starRadius
                          type:FlagStarTypeFivePointed] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image != nil ? image : [UIImage new];
}

@end
