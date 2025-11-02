//
//  UIImage+Guyana.m
//  CountriesFlags
//

#import "Countries/UIImage+Guyana.h"

#import "Extensions/UIBezierPath+Triangle.h"
#import "Extensions/UIBezierPath+AffineTransform.h"

@implementation UIImage (Guyana)

+ (UIImage * _Nullable)flagGuyanaWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:239.0f/255.0f
                                        green:51.0f/255.0f
                                         blue:64.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:1.0f
                                           green:209.0f/255.0f
                                            blue:0.0f
                                           alpha:1.0f];
    UIColor* colorGreen = [UIColor colorWithRed:0.0f
                                          green:151.0f/255.0f
                                           blue:57.0f/255.0f
                                          alpha:1.0f];
    UIColor* colorBlack = [UIColor blackColor];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    [[UIBezierPath triangleInSize:CGSizeMake(size.width * 2.0f, size.height)
                             type:FlagTriangleTypeLeftMiddle] fill];
    
    [colorYellow setFill];
    UIBezierPath* path = [UIBezierPath triangleInSize:CGSizeMake(size.width / 1920.0f * 3570.0f, size.height / 1152.0f * 1078.0f)
                                                 type:FlagTriangleTypeLeftMiddle];
    [path translateToPoint:CGPointMake(0.0f, size.height / 1152.0f * 37.0f)];
    [path fill];

    [colorBlack setFill];
    [[UIBezierPath triangleInSize:size type:FlagTriangleTypeLeftMiddle] fill];

    [colorRed setFill];
    path = [UIBezierPath triangleInSize:CGSizeMake(size.width / 1920.0f * 1772.0f, size.height / 1152.0f * 1062.0f)
                                   type:FlagTriangleTypeLeftMiddle];
    [path translateToPoint:CGPointMake(0.0f, size.height / 1152.0f * 43.0f)];
    [path fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
