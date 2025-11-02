//
//  UIImage+Pakistan.m
//  CountriesFlags
//

#import "Countries/UIImage+Pakistan.h"

#import "Extensions/UIBezierPath+Star.h"
#import "Extensions/UIBezierPath+AffineTransform.h"

@implementation UIImage (Pakistan)

+ (UIImage * _Nullable)flagPakistanWithSize:(CGSize)size {
    UIColor* colorGreen = [UIColor colorWithRed:1.0f/255.0f
                                          green:65.0f/255.0f
                                           blue:28.0f/255.0f
                                          alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width / 30.0f * 7.5f, size.height));
    
    [[UIBezierPath bezierPathWithArcCenter:CGPointMake(size.width / 30.0f * 18.75f, size.height / 2.0f)
                                    radius:size.height / 20.0f * 6.0f
                                startAngle:0.0f
                                  endAngle:M_PI * 2.0f
                                 clockwise:YES] fill];

    [colorGreen setFill];
    [[UIBezierPath bezierPathWithArcCenter:CGPointMake(size.width / 30.0f * 20.3f, size.height / 20.0f * 8.6f)
                                    radius:size.height / 20.0f * 5.5f
                                startAngle:0.0f
                                  endAngle:M_PI * 2.0f
                                 clockwise:YES] fill];
    
    [colorWhite setFill];
    CGPoint starCenter = CGPointMake(size.width / 30.0f * 21.75f, size.height / 20.0f * 7.35f);
    UIBezierPath* path = [UIBezierPath starAtPoint:starCenter
                                            radius:size.height / 20.0f * 2.0f
                                              type:FlagStarTypeFivePointed];
    [path rotateToAngle:-24.0f
                 center:CGPointMake(size.width / 30.0f * 21.75f, size.height / 20.0f * 14.7f / 2.0f)];
    [path fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
