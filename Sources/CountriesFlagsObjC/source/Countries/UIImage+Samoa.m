//
//  UIImage+Samoa.m
//  CountriesFlags
//

#import "Countries/UIImage+Samoa.h"

#import "Extensions/UIBezierPath+Star.h"

@implementation UIImage (Samoa)

+ (UIImage *)flagSamoaWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:43.0f/255.0f
                                          blue:127.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorRed = [UIColor colorWithRed:206.0f/255.0f
                                        green:17.0f/255.0f
                                         blue:38.0f/255.0f
                                        alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width / 2.0f, size.height / 2.0f));
    
    [colorWhite setFill];
    // left
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 288.0f * 50.0f, size.height / 144.0f * 29.5f)
                        radius:size.height / 144.0f * 8.5f
                          type:FlagStarTypeFivePointed] fill];
    // top
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 288.0f * 72.0f, size.height / 144.0f * 11.5f)
                        radius:size.height / 144.0f * 8.5f
                          type:FlagStarTypeFivePointed] fill];
    // right
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 288.0f * 94.5f, size.height / 144.0f * 26.0f)
                        radius:size.height / 144.0f * 8.0f
                          type:FlagStarTypeFivePointed] fill];
    // bottom
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 288.0f * 72.0f, size.height / 144.0f * 60.5f)
                        radius:size.height / 144.0f * 10.5f
                          type:FlagStarTypeFivePointed] fill];
    // mid-right
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 288.0f * 83.0f, size.height / 144.0f * 41.75f)
                        radius:size.height / 144.0f * 5.0f
                          type:FlagStarTypeFivePointed] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image != nil ? image : [UIImage new];
}

@end
