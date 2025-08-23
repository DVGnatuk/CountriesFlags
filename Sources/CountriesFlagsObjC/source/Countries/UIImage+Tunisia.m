//
//  UIImage+Tunisia.m
//  CountriesFlags
//

#import "Countries/UIImage+Tunisia.h"

#import "Extensions/UIBezierPath+Star.h"
#import "Extensions/UIBezierPath+AffineTransform.h"

@implementation UIImage (Tunisia)

+ (UIImage * _Nullable)flagTunisiaWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:231.0f/255.0f
                                        green:0.0f
                                         blue:19.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    [[UIBezierPath bezierPathWithArcCenter:CGPointMake(size.width / 2.0f, size.height / 2.0f)
                                    radius:size.height / 4.0f
                                startAngle:0.0f
                                  endAngle:M_PI * 2.0f
                                 clockwise:YES] fill];
    
    [colorRed setFill];
    [[UIBezierPath bezierPathWithArcCenter:CGPointMake(size.width / 2.0f, size.height / 2.0f)
                                    radius:size.height / 40.0f * 15.0f / 2.0f
                                startAngle:0.0f
                                  endAngle:M_PI * 2.0f
                                 clockwise:YES] fill];
    
    [colorWhite setFill];
    [[UIBezierPath bezierPathWithArcCenter:CGPointMake(size.width / 60.0f * 32.0f, size.height / 2.0f)
                                    radius:size.height / 40.0f * 12.0f / 2.0f
                                startAngle:0.0f
                                  endAngle:M_PI * 2.0f
                                 clockwise:YES] fill];
    
    [colorRed setFill];
    UIBezierPath* path = [UIBezierPath starWithSize:CGSizeMake(size.width / 60.0f * 32.0f * 2.0f, size.height)
                                             radius:size.height / 40.0f * 9.0f / 2.0f
                                               type:FlagStarTypeFivePointed];
    [path rotateToAngle:-18.0f
                 center:CGPointMake(size.width / 60.0f * 32.0f, size.height / 2.0f)];
    [path fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
