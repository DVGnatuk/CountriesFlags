//
//  UIImage+NorthMacedonia.m
//  CountriesFlags
//

#import "Countries/UIImage+NorthMacedonia.h"

#import "Extensions/CGSize+Extension.h"

@implementation UIImage (NorthMacedonia)

+ (UIImage * _Nullable)flagNorthMacedoniaWithSize:(CGSize)size {
    UIColor* colorYellow = [UIColor colorWithRed:249.0f/255.0f
                                           green:214.0f/255.0f
                                            blue:22.0f/255.0f
                                           alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:206.0f/255.0f
                                        green:32.0f/255.0f
                                         blue:40.0f/255.0f
                                        alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorRed setFill];
    [colorRed setStroke];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorYellow setFill];
    // left top
    UIBezierPath* path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointZero];
    [path addLineToPoint:CGPointMake(size.width / 2.0f * 0.3f, 0.0f)];
    [path addLineToPoint:CGPointMake(size.width / 2.0f * 1.1f, size.height * 0.56f)];
    [path closePath];
    [path fill];

    // left bottom
    [path removeAllPoints];
    [path moveToPoint:CGPointMake(0.0f, size.height)];
    [path addLineToPoint:CGPointMake(size.width / 2.0f * 0.3f, size.height)];
    [path addLineToPoint:CGPointMake(size.width / 2.0f * 1.1f, size.height * 0.44f)];
    [path closePath];
    [path fill];

    // right bottom
    [path removeAllPoints];
    [path moveToPoint:CGPointMake(size.width, size.height)];
    [path addLineToPoint:CGPointMake(size.width / 2.0f * 1.7f, size.height)];
    [path addLineToPoint:CGPointMake(size.width / 2.0f * 0.9f, size.height * 0.44f)];
    [path closePath];
    [path fill];

    // right top
    [path removeAllPoints];
    [path moveToPoint:CGPointMake(size.width, 0.0f)];
    [path addLineToPoint:CGPointMake(size.width / 2.0f * 1.7f, 0.0f)];
    [path addLineToPoint:CGPointMake(size.width / 2.0f * 0.9f, size.height * 0.56f)];
    [path closePath];
    [path fill];

    // left center
    [path removeAllPoints];
    [path moveToPoint:CGPointMake(0.0f, size.height * 0.4f)];
    [path addLineToPoint:CGPointMake(size.width / 2.0f, size.height / 2.0f)];
    [path addLineToPoint:CGPointMake(0.0f, size.height * 0.6f)];
    [path closePath];
    [path fill];

    // right center
    [path removeAllPoints];
    [path moveToPoint:CGPointMake(size.width, size.height * 0.4f)];
    [path addLineToPoint:CGPointMake(size.width / 2.0f, size.height / 2.0f)];
    [path addLineToPoint:CGPointMake(size.width, size.height * 0.6f)];
    [path closePath];
    [path fill];

    // top center
    [path removeAllPoints];
    [path moveToPoint:CGPointMake(size.width / 2.0f * 0.9f, 0.0f)];
    [path addLineToPoint:CGPointMake(size.width / 2.0f, size.height / 2.0f * 0.8f)];
    [path addLineToPoint:CGPointMake(size.width / 2.0f * 1.1f, 0.0f)];
    [path closePath];
    [path fill];

    // bottom center
    [path removeAllPoints];
    [path moveToPoint:CGPointMake(size.width / 2.0f * 0.9f, size.height)];
    [path addLineToPoint:CGPointMake(size.width / 2.0f, size.height / 2.0f * 1.2f)];
    [path addLineToPoint:CGPointMake(size.width / 2.0f * 1.1f, size.height)];
    [path closePath];
    [path fill];

    path = [UIBezierPath bezierPathWithArcCenter:CGSizeMidPoint(size)
                                          radius:size.height / 3.5f / 2.0f
                                      startAngle:0.0f
                                        endAngle:M_PI * 2.0f
                                       clockwise:YES];
    path.lineWidth = size.height / 14.0f;
    [path stroke];
    [path fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
