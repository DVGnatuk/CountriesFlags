//
//  UIImage+Niue.m
//  CountriesFlags
//

#import "Countries/UIImage+Niue.h"

#import "Extensions/UIBezierPath+Star.h"
#import "Extensions/CGSize+Extension.h"

#import "Countries/UIImage+UnitedKingdom.h"

@implementation UIImage (Niue)

+ (UIImage * _Nullable)flagNiueWithSize:(CGSize)size {
    UIColor* colorYellow = [UIColor colorWithRed:254.0f/255.0f
                                           green:221.0f/255.0f
                                            blue:0.0f
                                           alpha:1.0f];
    UIColor* colorBlue = [UIColor colorWithRed:1.0f/255.0f
                                         green:33.0f/255.0f
                                          blue:105.0f/255.0f
                                         alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorYellow setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));

    [[UIImage flagUnitedKingdomWithSize:CGSizeHalfSize(size)] drawAtPoint:CGPointZero];
    
    [colorBlue setFill];
    [[UIBezierPath bezierPathWithArcCenter:CGPointMake(size.width / 4.0f, size.height / 4.0f)
                                    radius:size.height / 30.0f * 2.5f
                                startAngle:0.0f
                                  endAngle:M_PI * 2.0f
                                 clockwise:YES] fill];

    [colorYellow setFill];
    [[UIBezierPath starAtPoint:(CGPointMake(size.width / 9.6f, size.height / 3.91f))
                        radius:size.height / 30.0f * 1.5f
                          type:FlagStarTypeFivePointed] fill];
    [[UIBezierPath starAtPoint:(CGPointMake(size.width / 100.0f * 39.55f, size.height / 3.91f))
                        radius:size.height / 30.0f * 1.5f
                          type:FlagStarTypeFivePointed] fill];
    [[UIBezierPath starAtPoint:(CGPointMake(size.width / 4.0f, size.height / 11.45f))
                        radius:size.height / 30.0f * 1.5f
                          type:FlagStarTypeFivePointed] fill];
    [[UIBezierPath starAtPoint:(CGPointMake(size.width / 4.0f, size.height / 2.37f))
                        radius:size.height / 30.0f * 1.5f
                          type:FlagStarTypeFivePointed] fill];
    [[UIBezierPath starAtPoint:(CGPointMake(size.width / 4.0f, size.height / 4.0f))
                        radius:size.height / 30.0f * 2.5f
                          type:FlagStarTypeFivePointed] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
