//
//  UIImage+NewZealand.m
//  CountriesFlags
//

#import "Countries/UIImage+NewZealand.h"

#import "Extensions/UIBezierPath+Star.h"

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

    // TODO: rework star() func and use stroke
    // Top star
    [colorWhite setFill];
    UIBezierPath* path = [UIBezierPath starWithSize:CGSizeMake(size.width / 120.0f * 180.0f, size.height / 60.0f * 24.0f)
                                             radius:size.height / 60.0f * 9.54484132 / 2.0f
                                               type:FlagStarTypeFivePointed];
    [path fill];

    [colorRed setFill];
    path = [UIBezierPath starWithSize:CGSizeMake(size.width / 120.0f * 180.0f, size.height / 60.0f * 24.0f)
                                             radius:size.height / 60.0f * 6.4 / 2.0f
                                               type:FlagStarTypeFivePointed];
    [path fill];

    // Left star
    [colorWhite setFill];
    path = [UIBezierPath starWithSize:CGSizeMake(size.width / 120.0f * 152.3f, size.height / 60.0f * 52.0f)
                                             radius:size.height / 60.0f * 9.54484132 / 2.0f
                                               type:FlagStarTypeFivePointed];
    [path fill];

    [colorRed setFill];
    path = [UIBezierPath starWithSize:CGSizeMake(size.width / 120.0f * 152.3f, size.height / 60.0f * 52.0f)
                                             radius:size.height / 60.0f * 6.4 / 2.0f
                                               type:FlagStarTypeFivePointed];
    [path fill];

    // Right star
    [colorWhite setFill];
    path = [UIBezierPath starWithSize:CGSizeMake(size.width / 120.0f * 203.7f, size.height / 60.0f * 44.6f)
                                             radius:size.height / 60.0f * 8.49337910 / 2.0f
                                               type:FlagStarTypeFivePointed];
    [path fill];

    [colorRed setFill];
    path = [UIBezierPath starWithSize:CGSizeMake(size.width / 120.0f * 203.7f, size.height / 60.0f * 44.6f)
                                             radius:size.height / 60.0f * 5.2f / 2.0f
                                               type:FlagStarTypeFivePointed];
    [path fill];
    
    // Bottom star
    [colorWhite setFill];
    path = [UIBezierPath starWithSize:CGSizeMake(size.width / 120.0f * 180.0f, size.height / 60.0f * 96.0f)
                                             radius:size.height / 60.0f * 10.59630355 / 2.0f
                                               type:FlagStarTypeFivePointed];
    [path fill];
    
    [colorRed setFill];
    path = [UIBezierPath starWithSize:CGSizeMake(size.width / 120.0f * 180.0f, size.height / 60.0f * 96.0f)
                                             radius:size.height / 60.0f * 7.45f / 2.0f
                                               type:FlagStarTypeFivePointed];
    [path fill];

    [[UIImage flagUnitedKingdomWithSize:CGSizeMake(size.width / 2.0f, size.height / 2.0f)] drawAtPoint:CGPointZero];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
