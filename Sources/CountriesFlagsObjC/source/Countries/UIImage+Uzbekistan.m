//
//  UIImage+Uzbekistan.m
//  CountriesFlags
//

#import "Countries/UIImage+Uzbekistan.h"

#import "Extensions/UIBezierPath+Star.h"

@implementation UIImage (Uzbekistan)

+ (UIImage *)flagUzbekistanWithSize:(CGSize)size {
    UIColor* colorGreen = [UIColor colorWithRed:48.0f/255.0f
                                          green:135.0f/255.0f
                                           blue:56.0f/255.0f
                                          alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:238.0f/255.0f
                                        green:22.0f/255.0f
                                         blue:46.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorBlue = [UIColor colorWithRed:48.0f/255.0f
                                         green:129.0f/255.0f
                                          blue:247.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];

    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height / 125.0f * 40.0f));

    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 125.0f * 85.0f, size.width, size.height / 125.0f * 40.0f));

    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 125.0f * 40.0f, size.width, size.height / 125.0f * 2.5f));
    UIRectFill(CGRectMake(0.0f, size.height / 125.0f * 82.5f, size.width, size.height / 125.0f * 2.5f));

    [colorWhite setFill];
    CGFloat radius = size.height / 125.0f * 15.0f;
    [[UIBezierPath bezierPathWithArcCenter:CGPointMake(size.width / 250.0f * 35.0f, size.height / 125.0f * 20.0f)
                                    radius:radius
                                startAngle:0.0f
                                  endAngle:M_PI * 2.0
                                 clockwise:YES] fill];
    
    [colorBlue setFill];
    [[UIBezierPath bezierPathWithArcCenter:CGPointMake(size.width / 250.0f * 40.0f, size.height / 125.0f * 20.0f)
                                    radius:radius
                                startAngle:0.0f
                                  endAngle:M_PI * 2.0
                                 clockwise:YES] fill];

    [colorWhite setFill];
    radius = size.height / 125.0f * 3.0f;
    for (int column = 4; column >= 0; column-=1) {
        switch (column) {
            case 4:
            case 3:
            case 2: {
                CGPoint starCenter = CGPointMake(size.width / 250.0f * (88.0f + column * 24.0f) / 2.0f, size.height / 125.0f * 8.0f);
                [[UIBezierPath starAtPoint:starCenter radius:radius type:FlagStarTypeFivePointed] fill];
            }
                
            case 1: {
                CGPoint starCenter = CGPointMake(size.width / 250.0f * (88.0f + column * 24.0f) / 2.0, size.height / 125.0f * 20.0f);
                [[UIBezierPath starAtPoint:starCenter radius:radius type:FlagStarTypeFivePointed] fill];
            }
                
            case 0: {
                CGPoint starCenter = CGPointMake(size.width / 250.0f * (88.0f + column * 24.0f) / 2.0, size.height / 125.0f * 32.0f);
                [[UIBezierPath starAtPoint:starCenter radius:radius type:FlagStarTypeFivePointed] fill];
            }
                
            default:
                break;
        }
    }
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image != nil ? image : [UIImage new];
}

@end
