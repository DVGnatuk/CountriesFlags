//
//  UIImage+Australia.m
//  CountriesFlags
//

#import "Countries/UIImage+Australia.h"

#import "Extensions/UIBezierPath+Star.h"

#import "Countries/UIImage+UnitedKingdom.h"

@implementation UIImage (Australia)

+ (UIImage *)flagAustraliaWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:1.0f/255.0f
                                         green:33.0f/255.0f
                                          blue:105.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));

    [colorWhite setFill];
    // Commonwealth star
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 4.0f, size.height * 0.75f)
                        radius:size.height / 20.0f * 3.0f
                          type:FlagStarTypeSevenPointed] fill];
    // Beta Crucis star
    [[UIBezierPath starAtPoint:CGPointMake(size.width * 0.625f, size.height / 6.0f * 2.63f)
                        radius:size.height / 14.0f
                          type:FlagStarTypeSevenPointed] fill];
    // Gamma Crucis star
    [[UIBezierPath starAtPoint:CGPointMake(size.width * 0.75f, size.height / 6.0f)
                        radius:size.height / 14.0f
                          type:FlagStarTypeSevenPointed] fill];
    // Delta Crucis star
    [[UIBezierPath starAtPoint:CGPointMake(size.width * 0.861f, size.height / 6.0f * 2.23f)
                        radius:size.height / 14.0f
                          type:FlagStarTypeSevenPointed] fill];
    // Alpha Crucis star
    [[UIBezierPath starAtPoint:CGPointMake(size.width * 0.74975f, size.height / 6.0f * 5.0f)
                        radius:size.height / 14.0f
                          type:FlagStarTypeSevenPointed] fill];
    // Epsilon Crucis star
    [[UIBezierPath starAtPoint:CGPointMake(size.width * 0.8f, size.height / 6.0f * 3.25f)
                        radius:size.height / 24.0f
                          type:FlagStarTypeFivePointed] fill];

    [[UIImage flagUnitedKingdomWithSize:CGSizeMake(size.width / 2.0f, size.height / 2.0f)] drawAtPoint:CGPointZero];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image != nil ? image : [UIImage new];
}

@end
