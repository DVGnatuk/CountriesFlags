//
//  UIImage+CookIslands.m
//  CountriesFlags
//

#import "Countries/UIImage+CookIslands.h"

#import "Extensions/UIBezierPath+Star.h"
#import "Extensions/UIBezierPath+AffineTransform.h"

#import "Countries/UIImage+UnitedKingdom.h"
#import "Extensions/CGSize+Extension.h"

@implementation UIImage (CookIslands)

+ (UIImage * _Nullable)flagCookIslandsWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:1.0f/255.0f
                                         green:33.0f/255.0f
                                          blue:105.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    for (int index = 0; index <= 14; index++) {
        UIBezierPath* path = [UIBezierPath starAtPoint:CGPointMake(size.width / 4.0f * 3.0f, size.height / 50.0f * 8.0f)
                                                radius:size.height / 100.0f * 7.5f
                                                  type:FlagStarTypeFivePointed];
        [path rotateToAngle:index * 24.0f
                     center:CGPointMake(size.width / 4.0 * 3.0, size.height / 2.0)];
        [path fill];
    }
    
    [[UIImage flagUnitedKingdomWithSize:CGSizeHalfSize(size)] drawAtPoint:CGPointZero];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
