//
//  UIImage+Maldives.m
//  CountriesFlags
//

#import "Countries/UIImage+Maldives.h"

@implementation UIImage (Maldives)

+ (UIImage *)flagMaldivesWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:200.0f/255.0f
                                        green:16.0f/255.0f
                                         blue:46.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorGreen = [UIColor colorWithRed:0.0f
                                          green:132.0f/255.0f
                                           blue:61.0f/255.0f
                                          alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorGreen setFill];
    CGRect greenRect = CGRectMake(size.width / 72.0f * 12.0f,
                                  size.height / 48.0f * 12.0f,
                                  size.width / 72.0f * 48.0f,
                                  size.height / 48.0f * 24.0f);
    UIRectFill(greenRect);
    
    [colorWhite setFill];
    CGFloat radius = size.height / 48.0f * 8.0f;
    CGPoint outerCenter = CGPointMake(size.width / 72.0f * 39.0f, size.height / 2.0f);
    CGPoint innerCenter = CGPointMake(size.width / 72.0f * 42.0f, size.height / 2.0f);
    [[UIBezierPath bezierPathWithArcCenter:outerCenter
                                    radius:radius
                                startAngle:0.0f
                                  endAngle:M_PI * 2.0
                                 clockwise:YES] fill];
    [colorGreen setFill];
    [[UIBezierPath bezierPathWithArcCenter:innerCenter
                                    radius:radius
                                startAngle:0.0f
                                  endAngle:M_PI * 2.0
                                 clockwise:YES] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image != nil ? image : [UIImage new];
}

@end
