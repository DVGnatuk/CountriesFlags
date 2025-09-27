//
//  UIImage+SouthAfrica.m
//  CountriesFlags
//

#import "Countries/UIImage+SouthAfrica.h"

@implementation UIImage (SouthAfrica)

+ (UIImage * _Nullable)flagSouthAfricaWithSize:(CGSize)size {
    UIColor* colorGreen = [UIColor colorWithRed:0.0f
                                          green:122.0f/255.0f
                                           blue:77.0f/255.0f
                                          alpha:1.0f];
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:35.0f/255.0f
                                          blue:149.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:222.0f/255.0f
                                        green:56.0f/255.0f
                                         blue:49.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorGold = [UIColor colorWithRed:1.0f
                                         green:182.0f/255.0f
                                          blue:18.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorBlack = [UIColor blackColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorGold setFill];
    UIBezierPath* path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(0.0f, size.height / 854.0f * 102.0f)];
    [path addLineToPoint:CGPointMake(size.width / 100.0f * 38.0f, size.height / 2.0f)];
    [path addLineToPoint:CGPointMake(0.0f, size.height / 854.0f * 751.0f)];
    [path closePath];
    [path fill];

    [colorBlack setFill];
    [path removeAllPoints];
    [path moveToPoint:CGPointMake(0.0f, size.height / 854.0f * 171.0f)];
    [path addLineToPoint:CGPointMake(size.width / 100.0f * 30.0f, size.height / 2.0f)];
    [path addLineToPoint:CGPointMake(0.0f, size.height / 854.0f * 683.0f)];
    [path closePath];
    [path fill];

    [colorWhite setFill];
    [path removeAllPoints];
    [path moveToPoint:CGPointMake(size.width / 1280.0f * 155.0f, 0.0f)];
    [path addLineToPoint:CGPointMake(size.width / 1280.0f * 665.0f, size.height / 854.0f * 341.0f)];
    [path addLineToPoint:CGPointMake(size.width, size.height / 854.0f * 341.0f)];
    [path addLineToPoint:CGPointMake(size.width, 0.0f)];
    [path closePath];
    [path fill];

    [path removeAllPoints];
    [path moveToPoint:CGPointMake(size.width / 1280.0f * 155.0f, size.height)];
    [path addLineToPoint:CGPointMake(size.width / 1280.0f * 665.0f, size.height / 854.0f * 512.0f)];
    [path addLineToPoint:CGPointMake(size.width,  size.height / 854.0f * 512.0f)];
    [path addLineToPoint:CGPointMake(size.width, size.height)];
    [path closePath];
    [path fill];

    [colorRed setFill];
    [path removeAllPoints];
    [path moveToPoint:CGPointMake(size.width / 1280.0f * 259.0f, 0.0f)];
    [path addLineToPoint:CGPointMake(size.width / 1280.0f * 682.0f, size.height / 854.0f * 284.0f)];
    [path addLineToPoint:CGPointMake(size.width, size.height / 854.0f * 284.0f)];
    [path addLineToPoint:CGPointMake(size.width, 0.0f)];
    [path closePath];
    [path fill];

    [colorBlue setFill];
    [path removeAllPoints];
    [path moveToPoint:CGPointMake(size.width / 1280.0f * 259.0f, size.height)];
    [path addLineToPoint:CGPointMake(size.width / 1280.0f * 682.0f, size.height / 854.0f * 569.0f)];
    [path addLineToPoint:CGPointMake(size.width, size.height / 854.0f * 569.0f)];
    [path addLineToPoint:CGPointMake(size.width, size.height)];
    [path closePath];
    [path fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
