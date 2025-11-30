//
//  UIImage+Rwanda.m
//  CountriesFlags
//

#import "Countries/UIImage+Rwanda.h"

#import "Extensions/UIBezierPath+Star.h"

@implementation UIImage (Rwanda)

+ (UIImage *)flagRwandaWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:163.0f/255.0f
                                          blue:224.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:250.0f/255.0f
                                           green:210.0f/255.0f
                                            blue:1.0f/255.0f
                                           alpha:1.0f];
    UIColor* colorGreen = [UIColor colorWithRed:32.0f/255.0f
                                          green:96.0f/255.0f
                                           blue:61.0f/255.0f
                                          alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 130.0f * 97.5f, size.width, size.height / 130.0f * 32.5f));

    [colorYellow setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 130.0f * 65.0f, size.width, size.height / 130.0f * 32.5f));
    CGPoint starCenter = CGPointMake(size.width / 195.0f * 160.0f, size.height / 130.0f * 34.0f);
    [[UIBezierPath starAtPoint:starCenter
                       radius:size.height / 130.0f * 42.0f / 2.0f
                  innerRadius:size.height / 130.0f * 13.0f / 2.0f
                         type:FlagStarTypeTwentyFourPointed] fill];

    [colorBlue setStroke];
    UIBezierPath* path = [UIBezierPath bezierPathWithArcCenter:starCenter
                                                        radius:size.height / 130.0f * 12.2f / 2.0f
                                                    startAngle:0.0f
                                                      endAngle:M_PI * 2.0f
                                                     clockwise:YES];
    path.lineWidth = size.height / 145.0f;
    [path stroke];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image != nil ? image : [UIImage new];
}

@end
