//
//  UIImage+Qatar.m
//  CountriesFlags
//

#import "Countries/UIImage+Qatar.h"

@implementation UIImage (Qatar)

+ (UIImage * _Nullable)flagQatarWithSize:(CGSize)size {
    UIColor* colorMaroon = [UIColor colorWithRed:138.0f/255.0f
                                           green:21.0f/255.0f
                                            blue:56.0f/255.0f
                                           alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0);
    
    [colorMaroon setFill];
    UIRectFill(CGRectMake(0.0, 0, size.width, size.height));
    
    [colorWhite setFill];
    UIBezierPath* path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointZero];
    [path addLineToPoint:CGPointMake(size.width / 12600.0 * (4200.0 - 504.0), 0.0f)];
    [path addLineToPoint:CGPointMake(size.width / 12600.0 * (4200.0 + 504.0), size.height / 4950.0 * 275.0)];
    [path addLineToPoint:CGPointMake(size.width / 12600.0 * (4200.0 - 504.0), size.height / 4950.0 * (275.0 * 2.0))];
    [path addLineToPoint:CGPointMake(size.width / 12600.0 * (4200.0 + 504.0), size.height / 4950.0 * (275.0 * 3.0))];
    [path addLineToPoint:CGPointMake(size.width / 12600.0 * (4200.0 - 504.0), size.height / 4950.0 * (275.0 * 4.0))];
    [path addLineToPoint:CGPointMake(size.width / 12600.0 * (4200.0 + 504.0), size.height / 4950.0 * (275.0 * 5.0))];
    [path addLineToPoint:CGPointMake(size.width / 12600.0 * (4200.0 - 504.0), size.height / 4950.0 * (275.0 * 6.0))];
    [path addLineToPoint:CGPointMake(size.width / 12600.0 * (4200.0 + 504.0), size.height / 4950.0 * (275.0 * 7.0))];
    [path addLineToPoint:CGPointMake(size.width / 12600.0 * (4200.0 - 504.0), size.height / 4950.0 * (275.0 * 8.0))];
    [path addLineToPoint:CGPointMake(size.width / 12600.0 * (4200.0 + 504.0), size.height / 4950.0 * (275.0 * 9.0))];
    [path addLineToPoint:CGPointMake(size.width / 12600.0 * (4200.0 - 504.0), size.height / 4950.0 * (275.0 * 10.0))];
    [path addLineToPoint:CGPointMake(size.width / 12600.0 * (4200.0 + 504.0), size.height / 4950.0 * (275.0 * 11.0))];
    [path addLineToPoint:CGPointMake(size.width / 12600.0 * (4200.0 - 504.0), size.height / 4950.0 * (275.0 * 12.0))];
    [path addLineToPoint:CGPointMake(size.width / 12600.0 * (4200.0 + 504.0), size.height / 4950.0 * (275.0 * 13.0))];
    [path addLineToPoint:CGPointMake(size.width / 12600.0 * (4200.0 - 504.0), size.height / 4950.0 * (275.0 * 14.0))];
    [path addLineToPoint:CGPointMake(size.width / 12600.0 * (4200.0 + 504.0), size.height / 4950.0 * (275.0 * 15.0))];
    [path addLineToPoint:CGPointMake(size.width / 12600.0 * (4200.0 - 504.0), size.height / 4950.0 * (275.0 * 16.0))];
    [path addLineToPoint:CGPointMake(size.width / 12600.0 * (4200.0 + 504.0), size.height / 4950.0 * (275.0 * 17.0))];
    [path addLineToPoint:CGPointMake(size.width / 12600.0 * (4200.0 - 504.0), size.height / 4950.0 * (275.0 * 18.0))];
    [path addLineToPoint:CGPointMake(0.0f, size.height)];
    [path closePath];
    [path fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
