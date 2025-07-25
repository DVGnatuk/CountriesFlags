//
//  UIImage+Germany.m
//  CountriesFlags
//

#import "Countries/UIImage+Germany.h"

@implementation UIImage (Germany)

+ (UIImage * _Nullable)flagGermanyWithSize:(CGSize)size {
    UIColor* colorBlack = [UIColor blackColor];
    UIColor* colorRed = [UIColor redColor];
    UIColor* colorGold = [UIColor colorWithRed:1.0f
                                         green:204.0f/255.0f
                                          blue:0.0f
                                         alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorBlack setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 3.0f, size.width, size.height / 3.0f));
    
    [colorGold setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 3.0f * 2.0f, size.width, size.height / 3.0f));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
