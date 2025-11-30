//
//  UIImage+NetherlandsAntilles.m
//  CountriesFlags
//

#import "Countries/UIImage+NetherlandsAntilles.h"

#import "Extensions/UIBezierPath+Star.h"

@implementation UIImage (NetherlandsAntilles)

+ (UIImage *)flagNetherlandsAntillesWithSize:(CGSize)size {
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorBlue = [UIColor colorWithRed:1.0f/255.0f
                                         green:45.0f/255.0f
                                          blue:135.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:220.0f/255.0f
                                        green:23.0f/255.0f
                                         blue:29.0f/255.0f
                                        alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
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
    CGPoint starCenter = CGPointMake(size.width / 1280.0f * 450.0f, (size.height + yOffset) / 2.0f);
    [[UIBezierPath starAtPoint:starCenter radius:starRadius type:FlagStarTypeFivePointed] fill];
    // 2 column
    starCenter = CGPointMake(size.width / 1280.0f * 569.0f, (size.height / 854.0f * 668.0f + yOffset) / 2.0f);
    [[UIBezierPath starAtPoint:starCenter radius:starRadius type:FlagStarTypeFivePointed] fill];
    starCenter = CGPointMake(size.width / 1280.0f * 569.0f, (size.height / 854.0f * 1048.0f + yOffset) / 2.0f);
    [[UIBezierPath starAtPoint:starCenter radius:starRadius type:FlagStarTypeFivePointed] fill];
    // 3 column
    starCenter = CGPointMake(size.width / 1280.0f * 710.5f, (size.height / 854.0f * 668.0f + yOffset) / 2.0f);
    [[UIBezierPath starAtPoint:starCenter radius:starRadius type:FlagStarTypeFivePointed] fill];
    starCenter = CGPointMake(size.width / 1280.0f * 710.5f, (size.height / 854.0f * 1048.0f + yOffset) / 2.0f);
    [[UIBezierPath starAtPoint:starCenter radius:starRadius type:FlagStarTypeFivePointed] fill];
    // 4 column
    starCenter = CGPointMake(size.width / 1280.0f * 829.0f, (size.height + yOffset) / 2.0f);
    [[UIBezierPath starAtPoint:starCenter radius:starRadius type:FlagStarTypeFivePointed] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image != nil ? image : [UIImage new];
}

@end
