//
//  UIImage+Palau.m
//  CountriesFlags
//

#import "Countries/UIImage+Palau.h"

@implementation UIImage (Palau)

+ (UIImage *)flagPalauWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:133.0f/255.0f
                                          blue:202.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:1.0f
                                           green:209.0f/255.0f
                                            blue:0.0f
                                           alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorYellow setFill];
    [[UIBezierPath bezierPathWithArcCenter:CGPointMake(size.width * 7.0f / 16.0f, size.height / 2.0f)
                                    radius:size.height * 3.0f / 10.0f
                                startAngle:0.0f
                                  endAngle:M_PI * 2.0f
                                 clockwise:YES] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image != nil ? image : [UIImage new];
}

@end
