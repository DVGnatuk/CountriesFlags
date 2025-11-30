//
//  UIImage+Suriname.m
//  CountriesFlags
//

#import "Countries/UIImage+Suriname.h"

#import "Extensions/UIBezierPath+Star.h"

@implementation UIImage (Suriname)

+ (UIImage *)flagSurinameWithSize:(CGSize)size {
    UIColor* colorGreen = [UIColor colorWithRed:55.0f/255.0f
                                          green:126.0f/255.0f
                                           blue:63.0f/255.0f
                                          alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorRed = [UIColor colorWithRed:180.0f/255.0f
                                        green:10.0f/255.0f
                                         blue:45.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:236.0f/255.0f
                                           green:200.0f/255.0f
                                            blue:29.0f/255.0f
                                           alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 20.0f * 4.0f, size.width, size.height / 20.0f * 12.0f));
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 20.0f * 6.0f, size.width, size.height / 20.0f * 8.0f));
    
    [colorYellow setFill];
    CGFloat radius = size.height / 20.0f * 8.0f / 2.0f;
    CGPoint starCenter = CGPointMake(size.width / 2.0f,
                                     (size.height + (size.height / 20.0 * 0.381966011 * 2.0)) / 2.0f);
    [[UIBezierPath starAtPoint:starCenter radius:radius type:FlagStarTypeFivePointed] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image != nil ? image : [UIImage new];
}

@end
