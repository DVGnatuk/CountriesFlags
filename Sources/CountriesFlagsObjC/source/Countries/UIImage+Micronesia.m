//
//  UIImage+Micronesia.m
//  CountriesFlags
//

#import "Countries/UIImage+Micronesia.h"

#import "Extensions/UIBezierPath+Star.h"
#import "Extensions/UIBezierPath+AffineTransform.h"

@implementation UIImage (Micronesia)

+ (UIImage * _Nullable)flagMicronesiaWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:117.0f/255.0f
                                         green:178.0f/255.0f
                                          blue:221.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    CGPoint starCenter = CGPointMake(size.width / 2.0f, size.height / 5.0f);
    CGFloat starRadius = size.height / 5.0f / 2.0f;
    CGPoint rotatePoint = CGPointMake(size.width / 2.0f, size.height / 2.0f);
    for (CGFloat angle = 0.0f; angle <= 270.0f; angle += 90.0f) {
        UIBezierPath* path = [UIBezierPath starAtPoint:starCenter
                                                radius:starRadius
                                                  type:FlagStarTypeFivePointed];
        [path rotateToAngle:angle center:rotatePoint];
        [path fill];
    }
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
