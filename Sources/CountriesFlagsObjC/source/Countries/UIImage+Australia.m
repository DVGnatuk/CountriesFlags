//
//  UIImage+Australia.m
//  CountriesFlags
//

#import "Countries/UIImage+Australia.h"

#import "Extensions/UIBezierPath+Star.h"

#import "Countries/UIImage+UnitedKingdom.h"

@implementation UIImage (Australia)

+ (UIImage * _Nullable)flagAustraliaWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:1.0f/255.0f
                                         green:33.0f/255.0f
                                          blue:105.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));

    [colorWhite setFill];
    // Commonwealth star
    [[UIBezierPath starWithSize:CGSizeMake(size.width / 2.0f, size.height * 1.5f)
                         radius:size.height / 20.0f * 3.0f
                           type:FlagStarTypeSevenPointed] fill];
    // Beta Crucis star
    [[UIBezierPath starWithSize:CGSizeMake(size.width * 1.25f, size.height / 6.0f * 5.26f)
                         radius:size.height / 14.0f
                           type:FlagStarTypeSevenPointed] fill];
    // Gamma Crucis star
    [[UIBezierPath starWithSize:CGSizeMake(size.width * 1.5f, size.height / 6.0f * 2.0f)
                         radius:size.height / 14.0f
                           type:FlagStarTypeSevenPointed] fill];
    // Delta Crucis star
    [[UIBezierPath starWithSize:CGSizeMake(size.width * 1.722f, size.height / 6.0f * 4.46f)
                         radius:size.height / 14.0f
                           type:FlagStarTypeSevenPointed] fill];
    // Alpha Crucis star
    [[UIBezierPath starWithSize:CGSizeMake(size.width * 1.4995f, size.height / 6.0f * 10.0f)
                         radius:size.height / 14.0f
                           type:FlagStarTypeSevenPointed] fill];
    // Epsilon Crucis star
    [[UIBezierPath starWithSize:CGSizeMake(size.width * 1.6f, size.height / 6.0f * 6.5f)
                         radius:size.height / 24.0f
                           type:FlagStarTypeFivePointed] fill];

    [[UIImage flagUnitedKingdomWithSize:CGSizeMake(size.width / 2.0f, size.height / 2.0f)] drawAtPoint:CGPointZero];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
