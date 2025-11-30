//
//  UIImage+RepublicCongo.m
//  CountriesFlags
// 

#import "Countries/UIImage+RepublicCongo.h"

@implementation UIImage (RepublicCongo)

+ (UIImage *)flagRepublicCongoWithSize:(CGSize)size {
    UIColor* colorGreen = [UIColor colorWithRed:0.0f
                                          green:149.0/255.0
                                           blue:67.0f/255.0f
                                          alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:251.0f/255.0f
                                           green:222.0f/255.0f
                                            blue:74.0f/255.0f
                                           alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:220.0f/255.0f
                                        green:36.0f/255.0f
                                         blue:31.0f/255.0f
                                        alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorYellow setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorGreen setFill];
    UIBezierPath* path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointZero];
    [path addLineToPoint:CGPointMake(0.0f, size.height)];
    [path addLineToPoint:CGPointMake(size.width * 2.0f / 3.0f, 0.0f)];
    [path closePath];
    [path fill];
    
    [colorRed setFill];
    [path removeAllPoints];
    [path moveToPoint:CGPointMake(size.width, 0.0f)];
    [path addLineToPoint:CGPointMake(size.width, size.height)];
    [path addLineToPoint:CGPointMake(size.width / 3.0f, size.height)];
    [path closePath];
    [path fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image != nil ? image : [UIImage new];
}

@end
