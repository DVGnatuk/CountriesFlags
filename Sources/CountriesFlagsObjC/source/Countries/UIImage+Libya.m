//
//  UIImage+Libya.m
//  CountriesFlags
//

#import "Countries/UIImage+Libya.h"

#import "Extensions/UIBezierPath+Star.h"
#import "Extensions/UIBezierPath+AffineTransform.h"
#import "Extensions/CGSize+Extension.h"

@implementation UIImage (Libya)

+ (UIImage * _Nullable)flagLibyaWithSize:(CGSize)size {
    UIColor* colorGreen = [UIColor colorWithRed:35.0f/255.0f
                                          green:158.0f/255.0f
                                           blue:70.0f/255.0f
                                          alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:231.0f/255.0f
                                        green:0.0f
                                         blue:19.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorBlack = [UIColor blackColor];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorBlack setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height / 4.0f));
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 4.0f * 3.0f, size.width, size.height / 4.0f));

    [colorWhite setFill];
    [[UIBezierPath bezierPathWithArcCenter:CGSizeMidPoint(size)
                                    radius:size.height / 8.0f
                                startAngle:0.0f
                                  endAngle:M_PI * 2.0f
                                 clockwise:YES] fill];

    [colorBlack setFill];
    [[UIBezierPath bezierPathWithArcCenter:(CGPointMake(size.width * 0.512f, size.height / 2.0f))
                                    radius:size.height / 9.15f
                                startAngle:0.0f
                                  endAngle:M_PI * 2.0f
                                 clockwise:YES] fill];

    [colorWhite setFill];
    CGPoint starCenter = CGPointMake(size.width * 0.577f, size.height / 2.0f);
    UIBezierPath* path = [UIBezierPath starAtPoint:starCenter
                                            radius:size.height / 11.0
                                              type:FlagStarTypeFivePointed];
    [path rotateToAngle:-18.0f center:starCenter];
    [path fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
