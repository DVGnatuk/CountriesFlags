//
//  UIImage+Taiwan.m
//  CountriesFlags
//

#import "Countries/UIImage+Taiwan.h"

#import "Extensions/UIBezierPath+Star.h"
#import "Extensions/CGSize+Extension.h"

@implementation UIImage (Taiwan)

+ (UIImage * _Nullable)flagTaiwanWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:254.0f/255.0f
                                        green:0.0f
                                         blue:0.0f
                                        alpha:1.0f];
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:0.0f
                                          blue:148.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width / 2.0, size.height / 2.0));
    
    [colorWhite setFill];
    CGPoint starCenter = CGPointMake(size.width / 4.0, size.height / 4.0);
    [[UIBezierPath starAtPoint:starCenter
                        radius:size.height / 80.0f * 15.0f
                   innerRadius:size.height / 80.0f * 7.5f
                          type:FlagStarTypeTwelvePointed] fill];
    
    [colorBlue setStroke];
    UIBezierPath* path = [UIBezierPath bezierPathWithArcCenter:starCenter
                                                        radius:size.height / 80.0f * 8.0f
                                                    startAngle:0.0f
                                                      endAngle:M_PI * 2.0f
                                                     clockwise:YES];
    path.lineWidth = size.height / 80.0f;
    [path stroke];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
