//
//  UIImage+Japan.m
//  CountriesFlags
//

#import "Countries/UIImage+Japan.h"

#import "Extensions/CGSize+Extension.h"

@implementation UIImage (Japan)

+ (UIImage * _Nullable)flagJapanWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:188.0f/255.0f
                                        green:0.0f
                                         blue:45.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));

    [colorRed setFill];
    [[UIBezierPath bezierPathWithArcCenter:CGSizeMidPoint(size)
                                    radius:size.height * 3.0f / 10.0f
                                startAngle:0.0f
                                  endAngle:M_PI * 2.0f
                                 clockwise:YES] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
