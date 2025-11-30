//
//  UIImage+UnitedKingdom.m
//  CountriesFlags
//

#import "Countries/UIImage+UnitedKingdom.h"

@implementation UIImage (UnitedKingdom)

+ (UIImage *)flagUnitedKingdomWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:1.0f/255.0f
                                         green:33.0f/255.0f
                                          blue:105.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:200.0f/255.0f
                                        green:16.0f/255.0f
                                         blue:46.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setStroke];
    UIBezierPath* path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointZero];
    [path addLineToPoint:CGPointMake(size.width, size.height)];
    [path closePath];
    path.lineWidth = size.height / 30.0f * 6.0f;
    [path stroke];

    [path removeAllPoints];
    [path moveToPoint:CGPointMake(0.0f, size.height)];
    [path addLineToPoint:CGPointMake(size.width, 0.0f)];
    [path closePath];
    path.lineWidth = size.height / 30.0f * 6.0f;
    [path stroke];

    [colorRed setStroke];
    [path removeAllPoints];
    [path moveToPoint:CGPointMake(size.width / 50.0f * -1.9f, 0.0f)];
    [path addLineToPoint:CGPointMake(size.width / 50.0f * 23.1f, size.height / 2.0f)];
    [path closePath];
    path.lineWidth = size.height / 30.0f * 2.0f;
    [path stroke];

    [path removeAllPoints];
    [path moveToPoint:CGPointMake(size.width / 50.0f * 24.9f, size.height / 30.0f * 14.0f)];
    [path addLineToPoint:CGPointMake(size.width / 50.0f * 51.1f, size.height / 30.0f * -1.8f)];
    [path closePath];
    path.lineWidth = size.height / 30.0f * 2.0f;
    [path stroke];

    [path removeAllPoints];
    [path moveToPoint:CGPointMake(size.width / 50.0f * 26.9f, size.height / 2.0f)];
    [path addLineToPoint:CGPointMake(size.width / 50.0f * 51.9f, size.height)];
    [path closePath];
    path.lineWidth = size.height / 30.0f * 2.0f;
    [path stroke];

    [path removeAllPoints];
    [path moveToPoint:CGPointMake(size.width / 50.0f * -1.9f, size.height / 30.0f * 32.3f)];
    [path addLineToPoint:(CGPointMake(size.width / 50.0f * 26.8f, size.height / 2.0f))];
    [path closePath];
    path.lineWidth = size.height / 30.0f * 2.0f;
    [path stroke];

    [colorWhite setStroke];
    [path removeAllPoints];
    [path moveToPoint:CGPointMake(0.0f, size.height / 2.0f)];
    [path addLineToPoint:CGPointMake(size.width, size.height / 2.0f)];
    [path closePath];
    path.lineWidth = size.height / 30.0f * 10.0f;
    [path stroke];

    [path removeAllPoints];
    [path moveToPoint:CGPointMake(size.width / 2.0f, 0.0f)];
    [path addLineToPoint:CGPointMake(size.width / 2.0, size.height)];
    [path closePath];
    path.lineWidth = size.height / 30.0f * 10.0f;
    [path stroke];

    [colorRed setStroke];
    [path removeAllPoints];
    [path moveToPoint:CGPointMake(0.0f, size.height / 2.0f)];
    [path addLineToPoint:CGPointMake(size.width, size.height / 2.0)];
    [path closePath];
    path.lineWidth = size.height / 30.0f * 6.0f;
    [path stroke];

    [path removeAllPoints];
    [path moveToPoint:CGPointMake(size.width / 2.0f, 0.0f)];
    [path addLineToPoint:CGPointMake(size.width / 2.0f, size.height)];
    [path closePath];
    path.lineWidth = size.height / 30.0f * 6.0f;
    [path stroke];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image != nil ? image : [UIImage new];
}

@end
