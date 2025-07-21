//
//  UIImage+SierraLeone.m
//  CountriesFlags
//

#import "Countries/UIImage+SierraLeone.h"

@implementation UIImage (SierraLeone)

+(UIImage * _Nullable) flagSierraLeoneWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:114.0f/255.0f
                                          blue:198.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorGreen = [UIColor colorWithRed:30.0f/255.0f
                                         green:181.0f/255.0f
                                          blue:58.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 3.0f, size.width, size.height / 3.0f));
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 3.0f * 2.0f, size.width, size.height / 3.0f));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
