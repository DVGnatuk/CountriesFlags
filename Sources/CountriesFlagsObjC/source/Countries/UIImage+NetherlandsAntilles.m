//
//  UIImage+NetherlandsAntilles.m
//  CountriesFlags
//

#import "Countries/UIImage+NetherlandsAntilles.h"

#import "Extensions/UIBezierPath+Star.h"

@implementation UIImage (NetherlandsAntilles)

+ (UIImage * _Nullable)flagNetherlandsAntillesWithSize:(CGSize)size {
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorBlue = [UIColor colorWithRed:1.0f/255.0f
                                         green:45.0f/255.0f
                                          blue:135.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:220.0f/255.0f
                                        green:23.0f/255.0f
                                         blue:29.0f/255.0f
                                        alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorRed setFill];
    UIRectFill(CGRectMake(size.width / 1280.0f * 500.0f, 0.0f, size.width / 1280.0f * 285.0f, size.height));
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 3.0f, size.width, size.height / 3.0f));
    
    [colorWhite setFill];
    CGFloat yOffset = size.height / 1280.0f * 5.0f;
    CGFloat starRadius = size.height / 854.0f * 38.0f;
    // 1 column
    CGSize starSize = CGSizeMake(size.width / 1280.0f * 900.0f, size.height + yOffset);
    [[UIBezierPath starWithSize:starSize radius:starRadius type:FlagStarTypeFivePointed] fill];
    // 2 column
    starSize = CGSizeMake(size.width / 1280.0f * 1138.0f, size.height / 854.0f * 668.0f + yOffset);
    [[UIBezierPath starWithSize:starSize radius:starRadius type:FlagStarTypeFivePointed] fill];
    starSize = CGSizeMake(size.width / 1280.0f * 1138.0f, size.height / 854.0f * 1048.0f + yOffset);
    [[UIBezierPath starWithSize:starSize radius:starRadius type:FlagStarTypeFivePointed] fill];
    // 3 column
    starSize = CGSizeMake(size.width / 1280.0f * 1421.0f, size.height / 854.0f * 668.0f + yOffset);
    [[UIBezierPath starWithSize:starSize radius:starRadius type:FlagStarTypeFivePointed] fill];
    starSize = CGSizeMake(size.width / 1280.0f * 1421.0f, size.height / 854.0f * 1048.0f + yOffset);
    [[UIBezierPath starWithSize:starSize radius:starRadius type:FlagStarTypeFivePointed] fill];
    // 4 column
    starSize = CGSizeMake(size.width / 1280.0f * 1658.0f, size.height + yOffset);
    [[UIBezierPath starWithSize:starSize radius:starRadius type:FlagStarTypeFivePointed] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
