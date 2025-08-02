//
//  UIImage+Samoa.m
//  CountriesFlags
//

#import "Countries/UIImage+Samoa.h"

#import "Extensions/UIBezierPath+Star.h"

@implementation UIImage (Samoa)

+ (UIImage * _Nullable)flagSamoaWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:43.0f/255.0f
                                          blue:127.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorRed = [UIColor colorWithRed:206.0f/255.0f
                                        green:17.0f/255.0f
                                         blue:38.0f/255.0f
                                        alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width / 2.0f, size.height / 2.0f));
    
    [colorWhite setFill];
    // left
    [[UIBezierPath starWithSize:CGSizeMake(size.width / 288.0f * 100.0f, size.height / 144.0f * 59.0f)
                         radius:size.height / 144.0f * 17.0f / 2.0f
                           type:FlagStarTypeFivePointed] fill];
    // top
    [[UIBezierPath starWithSize:CGSizeMake(size.width / 288.0f * 144.0f, size.height / 144.0f * 23.0f)
                         radius:size.height / 144.0f * 17.0f / 2.0f
                           type:FlagStarTypeFivePointed] fill];
    // right
    [[UIBezierPath starWithSize:CGSizeMake(size.width / 288.0f * 189.0f, size.height / 144.0f * 52.0f)
                         radius:size.height / 144.0f * 16.0f / 2.0f
                           type:FlagStarTypeFivePointed] fill];
    // bottom
    [[UIBezierPath starWithSize:CGSizeMake(size.width / 288.0f * 144.0f, size.height / 144.0f * 121.0f)
                         radius:size.height / 144.0f * 21.0f / 2.0f
                           type:FlagStarTypeFivePointed] fill];
    // mid-right
    [[UIBezierPath starWithSize:CGSizeMake(size.width / 288.0f * 166.0f, size.height / 144.0f * 83.5f)
                         radius:size.height / 144.0f * 10.0f / 2.0f
                           type:FlagStarTypeFivePointed] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
