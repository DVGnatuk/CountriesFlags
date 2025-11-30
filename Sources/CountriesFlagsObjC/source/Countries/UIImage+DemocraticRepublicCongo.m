//
//  UIImage+DemocraticRepublicCongo.m
//  CountriesFlags
//

#import "Countries/UIImage+DemocraticRepublicCongo.h"

#import "Extensions/UIBezierPath+Star.h"

@implementation UIImage (DemocraticRepublicCongo)

+ (UIImage *)flagDemocraticRepublicCongoWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:127.0f/255.0f
                                          blue:1.0f
                                         alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:206.0f/255.0f
                                        green:16.0f/255.0f
                                         blue:33.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:247.0f/255.0f
                                         green:214.0f/255.0f
                                          blue:24.0f/255.0f
                                         alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorYellow setFill];
    UIBezierPath* path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(0.0f, size.height)];
    [path addLineToPoint:CGPointMake(0.0f, size.height / 24.0f * 18.0f)];
    [path addLineToPoint:CGPointMake(size.width / 33.0f * 31.0f, 0.0f)];
    [path addLineToPoint:CGPointMake(size.width, 0.0f)];
    [path addLineToPoint:CGPointMake(size.width, size.height / 24.0f * 6.0f)];
    [path addLineToPoint:CGPointMake(size.width / 33.0f * 2.0f, size.height)];
    [path closePath];
    [path fill];

    [colorRed setFill];
    [path removeAllPoints];
    [path moveToPoint:CGPointMake(0.0f, size.height)];
    [path addLineToPoint:CGPointMake(0.0f, size.height / 24.0f * 19.2f)];
    [path addLineToPoint:CGPointMake(size.width, 0.0f)];
    [path addLineToPoint:(CGPointMake(size.width, size.height / 24.0f * 4.8f))];
    [path closePath];
    [path fill];
    
    [colorYellow setFill];
    [[UIBezierPath starAtPoint:CGPointMake(size.height / 24.0f * 5.85f, size.height / 24.0f * 6.25f)
                        radius:size.height / 24.0f * 4.8f
                          type:FlagStarTypeFivePointed] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image != nil ? image : [UIImage new];
}

@end
