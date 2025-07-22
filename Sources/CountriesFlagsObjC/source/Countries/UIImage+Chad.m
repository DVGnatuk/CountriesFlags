//
//  UIImage+Chad.m
//  CountriesFlags
//

#import "Countries/UIImage+Chad.h"

@implementation UIImage (Chad)

+ (UIImage * _Nullable)flagChadWithSize:(CGSize)size {
    UIColor* colorIndigo = [UIColor colorWithRed:0.0f
                                           green:32.0f/255.0f
                                            blue:91.0f/255.0f
                                           alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:252.0f/255.0f
                                           green:205.0f/255.0f
                                            blue:0.0f
                                           alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:200.0f/255.0f
                                        green:16.0f/255.0f
                                         blue:46.0f/255.0f
                                        alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorIndigo setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorYellow setFill];
    UIRectFill(CGRectMake(size.width / 3.0, 0.0f, size.width / 3.0, size.height));
    
    [colorRed setFill];
    UIRectFill(CGRectMake(size.width / 3.0 * 2.0, 0.0f, size.width / 3.0, size.height));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
