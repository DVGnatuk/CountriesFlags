//
//  UIImage+Honduras.m
//  CountriesFlags
//

#import "Countries/UIImage+Honduras.h"

#import "Extensions/UIBezierPath+Star.h"
#import "Extensions/CGSize+Extension.h"

@implementation UIImage (Honduras)

+ (UIImage *)flagHondurasWithSize:(CGSize)size {
    UIColor* colorBlueTurquoise = [UIColor colorWithRed:0.0f
                                                  green:188.0f/255.0f
                                                   blue:228.0f/255.0f
                                                  alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorBlueTurquoise setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 36.0f* 12.0f, size.width, size.height / 36.0f * 12.0f));
    
    [colorBlueTurquoise setFill];
    CGFloat radius = (size.height / 72.0 * 8.0) / 2.0;
    // center
    [[UIBezierPath starAtPoint:CGSizeMidPoint(size)
                        radius:radius
                          type:FlagStarTypeFivePointed] fill];
    // top left
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 72.0f * 26.0f, size.height / 36.0f * 15.0f)
                        radius:radius
                          type:FlagStarTypeFivePointed] fill];
    // top right
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 72.0f * 46.0f, size.height / 36.0f * 15.0f)
                        radius:radius
                          type:FlagStarTypeFivePointed] fill];
    // bottom left
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 72.0f * 26.0f, size.height / 36.0f * 21.0f)
                        radius:radius
                          type:FlagStarTypeFivePointed] fill];
    // bottom right
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 72.0f * 46.0f, size.height / 36.0f * 21.0f)
                        radius:radius
                          type:FlagStarTypeFivePointed] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image != nil ? image : [UIImage new];
}

@end
