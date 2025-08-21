//
//  UIImage+Turkey.m
//  CountriesFlags
//

#import "Countries/UIImage+Turkey.h"

#import "Extensions/UIBezierPath+Star.h"
#import "Extensions/UIBezierPath+Rotate.h"

@implementation UIImage (Turkey)

+ (UIImage * _Nullable)flagTurkeyWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:227.0f/255.0f
                                        green:10.0f/255.0f
                                         blue:23.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    [[UIBezierPath bezierPathWithArcCenter:CGPointMake(size.height / 2.0f, size.height / 2.0f)
                                    radius:size.height / 4.0f
                                startAngle:0.0f
                                  endAngle:M_PI * 2.0f
                                 clockwise:YES] fill];
    
    [colorRed setFill];
    [[UIBezierPath bezierPathWithArcCenter:CGPointMake(size.height / 2.0f + size.height / 16.0f, size.height / 2.0f)
                                    radius:size.height * 2.0 / 5.0 / 2.0
                                startAngle:0.0f
                                  endAngle:M_PI * 2.0f
                                 clockwise:YES] fill];
    
    [colorWhite setFill];
    UIBezierPath* path = [UIBezierPath starWithSize:CGSizeMake(size.height / 1280.0f * 1050.0f * 2.0f, size.height)
                                             radius:size.height / 4.0f / 2.0f
                                               type:FlagStarTypeFivePointed];
    [path rotateToAngle:-90.0f
                 center:CGPointMake(size.height / 1280.0f * 1050.0f, size.height / 2.0f)];
    [path fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
