//
//  UIImage+UnitedStatesOfAmerica.m
//  CountriesFlags
//

#import "Countries/UIImage+UnitedStatesOfAmerica.h"

#import "Extensions/UIBezierPath+Star.h"
#import "Extensions/CGSize+Extension.h"

@implementation UIImage (UnitedStatesOfAmerica)

+ (UIImage * _Nullable)flagUnitedStatesOfAmericaWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:10.0f/255.0f
                                         green:49.0f/255.0f
                                          blue:97.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:179.0f/255.0f
                                        green:25.0f/255.0f
                                         blue:66.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    for (int index = 1; index <= 13; index += 2) {
        UIRectFill(CGRectMake(0.0f, size.height / 13.0f * index, size.width, size.height / 13.0f));
    }
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width / 5.0f * 2.0f, size.height / 13.0f * 7.0f));

    [colorWhite setFill];
    CGFloat xOffset = size.width / 5.0f * 2.0f / 12.0f;
    CGFloat yOffset = size.height / 13.0f * 7.0f / 10.0f;
    CGFloat starRadius = size.height * 0.0616f / 2.0f;
    for (int indexY = 1; indexY <= 5; indexY++) {
        for (int indexX = 0; indexX <= 5; indexX++) {
            CGSize size = CGSizeMake(xOffset * 2.0f + xOffset * (indexX * 2.0f) * 2.0f, yOffset * indexY * 4.0f - yOffset * 2.0f);
            [[UIBezierPath starAtPoint:CGSizeMidPoint(size)
                                radius:starRadius
                                  type:FlagStarTypeFivePointed] fill];
        }
    }
    for (CGFloat indexY = 1.5f; indexY <= 5; indexY++) {
        for (CGFloat indexX = 0.5; indexX <= 5; indexX++) {
            CGSize size = CGSizeMake(xOffset * 2.0f + xOffset * (indexX * 2.0f) * 2.0f, yOffset * indexY * 4.0f - yOffset * 2.0f);
            [[UIBezierPath starAtPoint:CGSizeMidPoint(size)
                                radius:starRadius
                                  type:FlagStarTypeFivePointed] fill];
        }
    }
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
