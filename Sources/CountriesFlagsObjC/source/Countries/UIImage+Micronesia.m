//
//  UIImage+Micronesia.m
//  CountriesFlags
//

#import "Countries/UIImage+Micronesia.h"

#import "Extensions/UIBezierPath+Star.h"
#import "Extensions/UIBezierPath+Rotate.h"

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
    // top
    [[UIBezierPath starWithSize:(CGSizeMake(size.width, size.height / 5.0f * 2.0f))
                         radius:size.height / 5.0f / 2.0f
                           type:FlagStarTypeFivePointed] fill];
    // bottom
    UIBezierPath* path = [UIBezierPath starWithSize:CGSizeMake(size.width, size.height / 5.0 * 2.0)
                                             radius:size.height / 5.0f / 2.0f
                                               type:FlagStarTypeFivePointed];
    [path rotateToAngle:180.0f
                 center:CGPointMake(size.width / 2.0f, size.height / 2.0f)];
    [path fill];
    // right
    path = [UIBezierPath starWithSize:CGSizeMake(size.width, size.height / 5.0f * 2.0f)
                               radius:size.height / 5.0f / 2.0f
                                 type:FlagStarTypeFivePointed];
    [path rotateToAngle:90.0f
                 center:CGPointMake(size.width / 2.0f, size.height / 2.0f)];
    [path fill];
    // left
    path = [UIBezierPath starWithSize:CGSizeMake(size.width, size.height / 5.0f * 2.0f)
                               radius:size.height / 5.0f / 2.0f
                                 type:FlagStarTypeFivePointed];
    [path rotateToAngle:-90.0f
                 center:CGPointMake(size.width / 2.0f, size.height / 2.0f)];
    [path fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
