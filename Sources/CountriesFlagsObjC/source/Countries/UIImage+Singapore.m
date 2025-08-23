//
//  UIImage+Singapore.m
//  CountriesFlags
//

#import "Countries/UIImage+Singapore.h"

#import "Extensions/UIBezierPath+Star.h"

@implementation UIImage (Singapore)

+ (UIImage * _Nullable)flagSingaporeWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:238.0f/255.0f
                                        green:37.0f/255.0f
                                         blue:54.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height / 2.0f));
    
    [colorWhite setFill];
    [[UIBezierPath bezierPathWithArcCenter:CGPointMake(size.width / 54.0f * 11.46f, size.height / 36.0f * 9.0f)
                                    radius:size.height / 36.0f * 13.25f / 2.0f
                                startAngle:0.0f
                                  endAngle:M_PI * 2.0f
                                 clockwise:YES] fill];

    [colorRed setFill];
    [[UIBezierPath bezierPathWithArcCenter:CGPointMake(size.width / 54.0f * 14.44f, size.height / 36.0f * 9.0f)
                                    radius:size.height / 36.0f * 13.25f / 2.0f
                                startAngle:0.0f
                                  endAngle:M_PI * 2.0f
                                 clockwise:YES] fill];

    [colorWhite setFill];
    // top
    [[UIBezierPath starWithSize:CGSizeMake(size.width / 54.0f * 30.1f, size.height / 36.0f * 10.4f)
                         radius:size.height / 36.0f * 3.45f / 2.0f
                           type:FlagStarTypeFivePointed] fill];
    // left middle
    [[UIBezierPath starWithSize:CGSizeMake(size.width / 54.0f * 22.8f, size.height / 36.0f * 15.7f)
                         radius:size.height / 36.0f * 3.45f / 2.0f
                           type:FlagStarTypeFivePointed] fill];
    // right middle
    [[UIBezierPath starWithSize:CGSizeMake(size.width / 54.0f * 37.3f, size.height / 36.0f * 15.7f)
                         radius:size.height / 36.0f * 3.45f / 2.0f
                           type:FlagStarTypeFivePointed] fill];
    // left bottom
    [[UIBezierPath starWithSize:CGSizeMake(size.width / 54.0f * 25.6f, size.height / 36.0f * 24.2f)
                         radius:size.height / 36.0f * 3.45f / 2.0f
                           type:FlagStarTypeFivePointed] fill];
    // right bottom
    [[UIBezierPath starWithSize:CGSizeMake(size.width / 54.0f * 34.5f, size.height / 36.0f * 24.2f)
                         radius:size.height / 36.0f * 3.45f / 2.0f
                           type:FlagStarTypeFivePointed] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
