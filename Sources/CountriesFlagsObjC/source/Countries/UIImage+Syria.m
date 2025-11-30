//
//  UIImage+Syria.m
//  CountriesFlags
//

#import "Countries/UIImage+Syria.h"

#import "Extensions/UIBezierPath+Star.h"

@implementation UIImage (Syria)

+ (UIImage *)flagSyrianArabRepublicWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:206.0f/255.0f
                                        green:17.0f/255.0f
                                         blue:38.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorGreen = [UIColor colorWithRed:0.0f
                                          green:122.0f/255.0f
                                           blue:61.0f/255.0f
                                          alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorBlack = [UIColor blackColor];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height / 3.0f));
    
    [colorBlack setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 3.0f * 2.0f, size.width, size.height / 3.0f));
    
    [colorRed setFill];
    CGFloat starRadius = size.height / 6.0f * 1.65f / 2.0f;
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 4.0f, (size.height + size.height / 6.0f * 0.15f) / 2.0f)
                        radius:starRadius
                          type:FlagStarTypeFivePointed] fill];
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 2.0f, (size.height + size.height / 6.0f * 0.15f) / 2.0f)
                        radius:starRadius
                          type:FlagStarTypeFivePointed] fill];
    [[UIBezierPath starAtPoint:CGPointMake(size.width * 0.75f, (size.height + size.height / 6.0f * 0.15f) / 2.0f)
                        radius:starRadius
                          type:FlagStarTypeFivePointed] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image != nil ? image : [UIImage new];
}

@end
