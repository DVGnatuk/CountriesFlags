//
//  UIImage+BosniaAndHerzegovina.m
//  CountriesFlags
//

#import "Countries/UIImage+BosniaAndHerzegovina.h"

#import "Extensions/UIBezierPath+Star.h"

@implementation UIImage (BosniaAndHerzegovina)

+ (UIImage * _Nullable)flagBosniaAndHerzegovinaWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:20.0f/255.0f
                                          blue:137.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:1.0f
                                           green:205.0f/255.0f
                                            blue:0.0f
                                           alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorYellow setFill];
    UIBezierPath* path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(size.width / 400.0f * 106.0f, 0.0f)];
    [path addLineToPoint:CGPointMake(size.width / 400.0f * 306.0f, 0.0f)];
    [path addLineToPoint:CGPointMake(size.width / 400.0f * 306.0f, size.height)];
    [path closePath];
    [path fill];
    
    [colorWhite setFill];
    CGFloat starRadius = size.height / 200.0f * 19.0f;
    CGFloat yOffset = size.height / 200.0 * 2.24264579;
    for (int index = 0; index <= 8; index++) {
        CGFloat starWidth = size.width / 400.0f * (70.0f + index * 25.0f) * 2.0f;
        CGFloat starHeight = index == 0 ? -yOffset : size.height / 200.0f * (48.0f + (index - 1) * 50.0f);
        [[UIBezierPath starWithSize:CGSizeMake(starWidth, starHeight - yOffset)
                             radius:starRadius
                               type:FlagStarTypeFivePointed] fill];
    }
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
