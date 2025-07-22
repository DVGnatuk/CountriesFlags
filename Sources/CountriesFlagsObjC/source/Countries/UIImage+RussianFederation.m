//
//  UIImage+RussianFederation.m
//  CountriesFlags
//

#import "Countries/UIImage+RussianFederation.h"

@implementation UIImage (RussianFederation)

+ (UIImage * _Nullable)flagRussianFederationWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:50.0f/255.0f
                                          blue:160.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:218.0f/255.0f
                                        green:41.0f/255.0f
                                         blue:28.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 3.0f, size.width, size.height / 3.0f));
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 3.0f * 2.0f, size.width, size.height / 3.0f));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
