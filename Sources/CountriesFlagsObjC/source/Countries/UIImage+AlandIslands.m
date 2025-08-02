//
//  UIImage+AlandIslands.m
//  CountriesFlags
//

#import "Countries/UIImage+AlandIslands.h"

@implementation UIImage (AlandIslands)

+ (UIImage * _Nullable)flagAlandIslandsWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:100.0f/255.0f
                                          blue:174.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorOrange = [UIColor colorWithRed:1.0f
                                           green:211.0f/255.0f
                                            blue:0.0f
                                           alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:219.0f/255.0f
                                        green:15.0f/255.0f
                                         blue:22.0f/255.0f
                                        alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorOrange setFill];
    // horizontal line
    UIRectFill(CGRectMake(0.0f, size.height / 837.0f * 295.0f, size.width, size.height / 837.0f * 247.0f));
    // vertical line
    UIRectFill(CGRectMake(size.width / 1280.0f * 394.0f, 0.0f, size.width / 1280.0f * 246.0f, size.height));
    
    [colorRed setFill];
    // horizontal line
    UIRectFill(CGRectMake(0.0f, size.height / 837.0f * 369.0f, size.width, size.height / 837.0f * 99.0f));
    // vertical line
    UIRectFill(CGRectMake(size.width / 1280.0f * 468.0f, 0.0f, size.width / 1280.0f * 99.0f, size.height));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
