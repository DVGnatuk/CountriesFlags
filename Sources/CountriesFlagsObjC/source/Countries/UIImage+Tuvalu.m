//
//  UIImage+Tuvalu.m
//  CountriesFlags
//

#import "Countries/UIImage+Tuvalu.h"

#import "Countries/UIImage+UnitedKingdom.h"

#import "Extensions/UIBezierPath+Star.h"
#import "Extensions/UIBezierPath+AffineTransform.h"
#import "Extensions/CGSize+Extension.h"

@implementation UIImage (Tuvalu)

+ (UIImage * _Nullable)flagTuvaluWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:156.0f/255.0f
                                          blue:222.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:254.0f/255.0f
                                           green:221.0f/255.0f
                                            blue:0.0f
                                           alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorYellow setFill];
    // Nanumea island
    CGFloat starRadius = size.height / 100.0f * 8.7f;
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 1000.0f * 546.0f, size.height / 100.0f * 90.0f)
                        radius:starRadius
                          type:FlagStarTypeFivePointed] fill];
    // Nukufetau island
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 1000.0f * 842.0f, size.height / 100.0f * 64.15f)
                        radius:starRadius
                          type:FlagStarTypeFivePointed] fill];
    // Niulakita island
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 1000.0f * 929.0f, size.height / 100.0f * 53.25f)
                        radius:starRadius
                          type:FlagStarTypeFivePointed] fill];
    // Nukulaelae island
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 1000.0f * 929.0f, size.height / 100.0f * 13.25f)
                        radius:starRadius
                          type:FlagStarTypeFivePointed] fill];
    // Niutao island
    CGPoint starCenter = CGPointMake(size.width / 1000.0f * 650.0f, size.height / 100.0f * 64.25f);
    UIBezierPath* path = [UIBezierPath starAtPoint:starCenter radius:starRadius type:FlagStarTypeFivePointed];
    [path rotateToAngle:36.0f center:starCenter];
    [path fill];
    // Nanumanga island
    starCenter = CGPointMake(size.width / 1000.0f * 650.0f, size.height / 100.0f * 85.0f);
    path = [UIBezierPath starAtPoint:starCenter
                              radius:starRadius
                                type:FlagStarTypeFivePointed];
    [path rotateToAngle:36.0f center:starCenter];
    [path fill];
    // Nui island
    starCenter = CGPointMake(size.width / 1000.0f * 754.5f, size.height / 100.0f * 79.25f);
    path = [UIBezierPath starAtPoint:starCenter
                              radius:starRadius
                                type:FlagStarTypeFivePointed];
    [path rotateToAngle:36.0f center:starCenter];
    [path fill];
    // Vaitupu island
    starCenter = CGPointMake(size.width / 1000.0f * 754.5f, size.height / 100.0f * 35.75f);
    path = [UIBezierPath starAtPoint:starCenter
                              radius:starRadius
                                type:FlagStarTypeFivePointed];
    [path rotateToAngle:36.0f center:starCenter];
    [path fill];
    // Funafuti island
    starCenter = CGPointMake(size.width / 1000.0f * 841.5f, size.height / 100.0f * 29.3f);
    path = [UIBezierPath starAtPoint:starCenter
                              radius:starRadius
                                type:FlagStarTypeFivePointed];
    [path rotateToAngle:36.0f center:starCenter];
    [path fill];

    [[UIImage flagUnitedKingdomWithSize:CGSizeHalfSize(size)] drawAtPoint:CGPointZero];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
