//
//  UIImage+AntiguaAndBarbuda.m
//  CountriesFlags
//

#import "Countries/UIImage+AntiguaAndBarbuda.h"

@implementation UIImage (AntiguaAndBarbuda)

+ (UIImage *)flagAntiguaAndBarbudaWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:94.0f/255.0f
                                          blue:184.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:239.0f/255.0f
                                        green:51.0f/255.0f
                                         blue:64.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorOrange = [UIColor colorWithRed:1.0f
                                           green:209.0f/255.0f
                                            blue:0.0f
                                           alpha:1.0f];
    UIColor* colorBlack = [UIColor blackColor];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorBlack setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 46.0f * 18.0f, size.width, size.height / 46.0f * 10.0f));
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 46.0f * 28.0f, size.width, size.height / 46.0f * 28.0f));
    
    [colorRed setFill];
    UIBezierPath* path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointZero];
    [path addLineToPoint:CGPointMake(size.width / 2.0f, size.height)];
    [path addLineToPoint:CGPointMake(size.width, 0.0f)];
    [path addLineToPoint:CGPointMake(size.width, size.height)];
    [path addLineToPoint:CGPointMake(0.0f, size.height)];
    [path closePath];
    [path fill];
    
    // TODO: check sun
    [colorOrange setFill];
    CGFloat x0 = size.width / 2.0f;
    CGFloat y0 = size.height / 46.0f * 18.0f;
    UIBezierPath* pathSun = [UIBezierPath bezierPath];
    [pathSun moveToPoint:CGPointMake(size.width / 2.0f + size.width / 69.0f * 15.0f, size.height / 46.0f * 18.0f)];
    for (NSUInteger index = 1; index <= 17; index++) {
        CGFloat theta = (-180.0f / 16.0f * index) * M_PI / 180.0f;
        CGFloat xPos = index % 2 == 0 ? size.width / 69.0f * 15.0f * cosf(theta)
                                      : size.width / 69.0f * 15.0f / 2.0f * cosf(theta);
        CGFloat yPos = index % 2 == 0 ? size.width / 69.0f * 15.0f * sinf(theta)
                                      : size.width / 69.0f * 15.0f / 2.0f * sinf(theta);
        [pathSun addLineToPoint:CGPointMake(x0 + xPos, y0 + yPos)];
    }
    [pathSun addLineToPoint:CGPointMake(size.width / 2.0f - size.width / 69.0f * 15.0f, size.height / 46.0f * 18.0f)];
    [pathSun closePath];
    [pathSun fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image != nil ? image : [UIImage new];
}

@end
