//
//  UIImage+NewZealand.m
//  CountriesFlags
//

#import "Countries/UIImage+NewZealand.h"

#import "Extensions/UIBezierPath+Star.h"
#import "Extensions/CGSize+Extension.h"

#import "Countries/UIImage+UnitedKingdom.h"

@implementation UIImage (NewZealand)

+ (UIImage * _Nullable)flagNewZealandWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:1.0f/255.0f
                                         green:33.0f/255.0f
                                          blue:105.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:200.0f/255.0f
                                        green:16.0f/255.0f
                                         blue:46.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));

    [colorWhite setStroke];
    [colorRed setFill];
    // Top star
    UIBezierPath* path = [UIBezierPath starAtPoint:CGPointMake(size.width / 120.0f * 90.0f, size.height / 60.0f * 12.0f)
                                            radius:size.height / 60.0f * 9.54484132 / 3.0f
                                              type:FlagStarTypeFivePointed];
    path.lineWidth = size.height / 60.0f;
    [path stroke];
    [path fill];

    // Left star
    path = [UIBezierPath starAtPoint:CGPointMake(size.width / 120.0f * 76.15f, size.height / 60.0f * 26.0f)
                              radius:size.height / 60.0f * 9.54484132 / 3.0f
                                type:FlagStarTypeFivePointed];
    path.lineWidth = size.height / 60.0f;
    [path stroke];
    [path fill];

    // Right star
    path = [UIBezierPath starAtPoint:CGPointMake(size.width / 120.0f * 101.85f, size.height / 60.0f * 22.3f)
                              radius:size.height / 60.0f * 8.49337910 / 3.2f
                                type:FlagStarTypeFivePointed];
    path.lineWidth = size.height / 60.0f;
    [path stroke];
    [path fill];
    
    // Bottom star
    path = [UIBezierPath starAtPoint:CGPointMake(size.width / 120.0f * 90.0f, size.height / 60.0f * 48.0f)
                              radius:size.height / 60.0f * 10.59630355 / 3.0f
                                type:FlagStarTypeFivePointed];
    path.lineWidth = size.height / 60.0f;
    [path stroke];
    [path fill];

    [[UIImage flagUnitedKingdomWithSize:CGSizeHalfSize(size)] drawAtPoint:CGPointZero];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
