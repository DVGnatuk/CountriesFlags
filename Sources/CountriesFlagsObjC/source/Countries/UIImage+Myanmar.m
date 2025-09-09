//
//  UIImage+Myanmar.m
//  CountriesFlags
//

#import "Countries/UIImage+Myanmar.h"

#import "Extensions/UIBezierPath+Star.h"

@implementation UIImage (Myanmar)

+ (UIImage * _Nullable)flagMyanmarWithSize:(CGSize)size {
    UIColor* colorGreen = [UIColor colorWithRed:52.0f/255.0f
                                          green:178.0f/255.0f
                                           blue:51.0f/255.0f
                                          alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:234.0f/255.0f
                                        green:40.0f/255.0f
                                         blue:57.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:254.0f/255.0f
                                           green:203.0f/255.0f
                                            blue:0.0f
                                           alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorYellow setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 3.0f, size.width, size.height / 3.0f));
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 3.0f * 2.0f, size.width, size.height / 3.0f));
    
    [colorWhite setFill];
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 2.0, (size.height + (size.height / 6.0f * 0.422291236)) / 2.0f)
                        radius:size.height / 12.0f * 8.844582472 / 2.0f
                          type:FlagStarTypeFivePointed] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
