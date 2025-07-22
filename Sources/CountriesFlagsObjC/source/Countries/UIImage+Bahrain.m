//
//  UIImage+Bahrain.m
//  CountriesFlags
//

#import "Countries/UIImage+Bahrain.h"

@implementation UIImage (Bahrain)

+ (UIImage * _Nullable)flagBahrainWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:218.0f/255.0f
                                        green:41.0f/255.0f
                                         blue:28.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    UIBezierPath* path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointZero];
    [path addLineToPoint:CGPointMake(size.width / 100.0f * 25.0f, 0.0f)];
    [path addLineToPoint:CGPointMake(size.width / 100.0f * 40.0f, size.height / 60.0f * 6.0f)];
    [path addLineToPoint:CGPointMake(size.width / 100.0f * 25.0f, size.height / 60.0f * 12.0f)];
    [path addLineToPoint:CGPointMake(size.width / 100.0f * 40.0f, size.height / 60.0f * 18.0f)];
    [path addLineToPoint:CGPointMake(size.width / 100.0f * 25.0f, size.height / 60.0f * 24.0f)];
    [path addLineToPoint:CGPointMake(size.width / 100.0f * 40.0f, size.height / 60.0f * 30.0f)];
    [path addLineToPoint:CGPointMake(size.width / 100.0f * 25.0f, size.height / 60.0f * 36.0f)];
    [path addLineToPoint:CGPointMake(size.width / 100.0f * 40.0f, size.height / 60.0f * 42.0f)];
    [path addLineToPoint:CGPointMake(size.width / 100.0f * 25.0f, size.height / 60.0f * 48.0f)];
    [path addLineToPoint:CGPointMake(size.width / 100.0f * 40.0f, size.height / 60.0f * 54.0f)];
    [path addLineToPoint:CGPointMake(size.width / 100.0f * 25.0f, size.height)];
    [path addLineToPoint:CGPointMake(0.0f, size.height)];
    [path closePath];
    [path fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
