//
//  UIImage+Tuvalu.m
//  CountriesFlags
//

#import "Countries/UIImage+Tuvalu.h"

#import "Countries/UIImage+UnitedKingdom.h"

#import "Extensions/UIBezierPath+Star.h"
#import "Extensions/UIBezierPath+AffineTransform.h"

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
    [[UIBezierPath starWithSize:CGSizeMake(size.width / 1000.0f * 1092.0f, size.height / 100.0f * 180.0f)
                         radius:starRadius
                           type:FlagStarTypeFivePointed] fill];
    // Nukufetau island
    [[UIBezierPath starWithSize:CGSizeMake(size.width / 1000.0f * 1684.0f, size.height / 100.0f * 128.3f)
                         radius:starRadius
                           type:FlagStarTypeFivePointed] fill];
    // Niulakita island
    [[UIBezierPath starWithSize:CGSizeMake(size.width / 1000.0f * 1858.0f, size.height / 100.0f * 106.5f)
                         radius:starRadius
                           type:FlagStarTypeFivePointed] fill];
    // Nukulaelae island
    [[UIBezierPath starWithSize:CGSizeMake(size.width / 1000.0f * 1858.0f, size.height / 100.0f * 26.5f)
                         radius:starRadius
                           type:FlagStarTypeFivePointed] fill];
    // Niutao island
    CGSize starSize = CGSizeMake(size.width / 1000.0f * 1300.0f, size.height / 100.0f * 128.5f);
    UIBezierPath* path = [UIBezierPath starWithSize:starSize radius:starRadius type:FlagStarTypeFivePointed];
    [path rotateToAngle:36.0f center:CGPointMake(size.width / 1000.0f * 1300.0f / 2.0f, size.height / 100.0f * 128.5f / 2.0f)];
    [path fill];
    // Nanumanga island
    path = [UIBezierPath starWithSize:CGSizeMake(size.width / 1000.0f * 1300.0f, size.height / 100.0f * 170.0f)
                               radius:starRadius type:FlagStarTypeFivePointed];
    [path rotateToAngle:36.0f center:CGPointMake(size.width / 1000.0f * 1300.0f / 2.0f, size.height / 100.0f * 170.0f / 2.0f)];
    [path fill];
    // Nui island
    path = [UIBezierPath starWithSize:CGSizeMake(size.width / 1000.0f * 1509.0f, size.height / 100.0f * 158.5f)
                               radius:starRadius type:FlagStarTypeFivePointed];
    [path rotateToAngle:36.0f center:CGPointMake(size.width / 1000.0f * 1509.0f / 2.0f, size.height / 100.0f * 158.5f / 2.0f)];
    [path fill];
    // Vaitupu island
    path = [UIBezierPath starWithSize:CGSizeMake(size.width / 1000.0f * 1509.0f, size.height / 100.0f * 71.5f)
                               radius:starRadius type:FlagStarTypeFivePointed];
    [path rotateToAngle:36.0f center:CGPointMake(size.width / 1000.0f * 1509.0f / 2.0f, size.height / 100.0f * 71.5f / 2.0f)];
    [path fill];
    // Funafuti island
    path = [UIBezierPath starWithSize:CGSizeMake(size.width / 1000.0f * 1683.0f, size.height / 100.0f * 58.6f)
                               radius:starRadius type:FlagStarTypeFivePointed];
    [path rotateToAngle:36.0f center:CGPointMake(size.width / 1000.0f * 1683.0f / 2.0f, size.height / 100.0f * 58.6f / 2.0f)];
    [path fill];

    [[UIImage flagUnitedKingdomWithSize:CGSizeMake(size.width / 2.0f, size.height / 2.0f)] drawAtPoint:CGPointZero];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
