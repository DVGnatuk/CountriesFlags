//
//  UIImage+SaintVincentAndTheGrenadines.m
//  CountriesFlags
//

#import "Countries/UIImage+SaintVincentAndTheGrenadines.h"

#import "Extensions/UIBezierPath+Star.h"

@implementation UIImage (SaintVincentAndTheGrenadines)

+ (UIImage *)flagSaintVincentAndTheGrenadinesWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:38.0f/255.0f
                                          blue:116.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:252.0f/255.0f
                                           green:208.0f/255.0f
                                            blue:34.0f/255.0f
                                           alpha:1.0f];
    UIColor* colorGreen = [UIColor colorWithRed:0.0f
                                          green:124.0f/255.0f
                                           blue:46.0f/255.0f
                                          alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorYellow setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width / 4.0f, size.height));
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(size.width / 4.0f * 3.0f, 0.0f, size.width / 4.0f, size.height));
    
    UIBezierPath* path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(size.width / 20.0f * 8.5f, size.height / 20.0f * 6.5f)];
    [path addLineToPoint:CGPointMake(size.width / 20.0f * 9.75f, size.height / 20.0f * 9.8f)];
    [path addLineToPoint:CGPointMake(size.width / 20.0f * 8.5f, size.height / 20.0f * 13.0f)];
    [path addLineToPoint:CGPointMake(size.width / 20.0f * 7.25f, size.height / 20.0f * 9.8f)];
    [path closePath];
    [path fill];

    [path removeAllPoints];
    [path moveToPoint:CGPointMake(size.width / 20.0f * 11.5f, size.height / 20.0f * 6.5f)];
    [path addLineToPoint:CGPointMake(size.width / 20.0f * 12.75f, size.height / 20.0f * 9.8f)];
    [path addLineToPoint:CGPointMake(size.width / 20.0f * 11.5f, size.height / 20.0f * 13.0f)];
    [path addLineToPoint:CGPointMake(size.width / 20.0f * 10.25f, size.height / 20.0f * 9.8f)];
    [path closePath];
    [path fill];

    [path removeAllPoints];
    [path moveToPoint:CGPointMake(size.width / 20.0f * 10.0f, size.height / 20.0f * 10.3f)];
    [path addLineToPoint:CGPointMake(size.width / 20.0f * 11.25f, size.height / 20.0f * 13.6f)];
    [path addLineToPoint:CGPointMake(size.width / 20.0f * 10.0f, size.height / 20.0f * 16.8f)];
    [path addLineToPoint:CGPointMake(size.width / 20.0f * 8.75f, size.height / 20.0f * 13.6f)];
    [path closePath];
    [path fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image != nil ? image : [UIImage new];return image;
}

@end
