//
//  UIImage+Mauritania.m
//  CountriesFlags
//

#import "Countries/UIImage+Mauritania.h"

#import "Extensions/UIBezierPath+Star.h"

@implementation UIImage (Mauritania)

+ (UIImage *)flagMauritaniaWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:208.0f/255.0f
                                        green:28.0f/255.0f
                                         blue:31.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:1.0f
                                           green:215.0f/255.0f
                                            blue:0.0f
                                           alpha:1.0f];
    UIColor* colorGreen = [UIColor colorWithRed:0.0f
                                          green:169.0f/255.0f
                                           blue:92.0f/255.0f
                                          alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorYellow setFill];
    [[UIBezierPath bezierPathWithArcCenter:CGPointMake(size.width / 2.0f, size.height / 1000.0f * 325.0f)
                                    radius:size.height / 1000.0f * 375.0f
                                startAngle:0.0f
                                  endAngle:M_PI * 2.0f
                                 clockwise:YES] fill];

    [colorGreen setFill];
    [[UIBezierPath bezierPathWithArcCenter:CGPointMake(size.width / 2.0f, size.height / 1000.0f * 200.0f)
                                    radius:size.height / 1000.0f * 400.0f
                                startAngle:0.0f
                                  endAngle:M_PI * 2.0f
                                 clockwise:YES] fill];
    
    [colorYellow setFill];
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 2.0f, size.height / 1000.0f * 406.0f)
                        radius:size.height / 1000.0f * 105.0f
                          type:FlagStarTypeFivePointed] fill];

    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height / 1000.0f * 200.0f));
    UIRectFill(CGRectMake(0.0f, size.height / 1000.0f * 800.0f, size.width, size.height / 1000.0f * 200.0f));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image != nil ? image : [UIImage new];
}

@end
