//
//  UIImage+Algeria.m
//  CountriesFlags
//

#import "Countries/UIImage+Algeria.h"

#import "Extensions/UIBezierPath+Star.h"
#import "Extensions/UIBezierPath+AffineTransform.h"
#import "Extensions/CGSize+Extension.h"

@implementation UIImage (Algeria)

+ (UIImage * _Nullable)flagAlgeriaWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:217.0f/255.0f
                                        green:0.0f
                                         blue:18.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorGreen = [UIColor colorWithRed:0.0f
                                          green:102.0f/255.0f
                                           blue:51.0f/255.0f
                                          alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width / 2.0f, size.height));

    [colorRed setFill];
    [[UIBezierPath bezierPathWithArcCenter:CGSizeMidPoint(size)
                                    radius:size.height / 4.0f
                                startAngle:0.0f
                                  endAngle:M_PI * 2.0f
                                 clockwise:YES] fill];

    [colorWhite setFill];
    CGPoint arcCenter = CGPointMake(size.width / 2.0f + size.height / 20.0f * 1.207628020, size.height / 2.0f);
    CGFloat arcRadius = size.height / 20.0f * 8.0f / 2.0f;
    [[UIBezierPath bezierPathWithArcCenter:arcCenter
                                    radius:arcRadius
                                startAngle:0.0f
                                  endAngle:M_PI * 2.0f
                                 clockwise:YES] fill];

    [colorGreen setFill];
    NSUnitAngle* unitDegrees = [NSUnitAngle degrees];
    NSUnitAngle* unitRadians = [NSUnitAngle radians];
    double startAngle = [[[[NSMeasurement alloc] initWithDoubleValue:107.6
                                                                unit:unitDegrees] measurementByConvertingToUnit:unitRadians] doubleValue];
    double endAngle = [[[[NSMeasurement alloc] initWithDoubleValue:-107.6
                                                              unit:unitDegrees] measurementByConvertingToUnit:unitRadians] doubleValue];
    [[UIBezierPath bezierPathWithArcCenter:arcCenter
                                    radius:arcRadius
                                startAngle:startAngle
                                  endAngle:endAngle
                                 clockwise:YES] fill];

    [colorRed setFill];
    CGPoint starCenter = CGPointMake(size.width / 2.0f + size.height / 20.0f * 2.022542486, size.height / 2.0f);
    UIBezierPath* path = [UIBezierPath starAtPoint:starCenter
                                            radius:size.height / 20.0f * 5.0f / 2.0f
                                              type:FlagStarTypeFivePointed];
    [path rotateToAngle:18.0f center:starCenter];
    [path fill];

    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
