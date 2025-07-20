//
//  UIImage+Bahamas.m
//  CountriesFlags
//

#import "UIImage+Bahamas.h"

#import "UIBezierPath+Extension.h"

@implementation UIImage (Bahamas)

+(UIImage * _Nullable) flagBahamasWithSize:(CGSize)size {
    UIColor* colorAquamarine = [UIColor colorWithRed:0.0f
                                               green:169.0f/255.0f
                                                blue:206.0f/255.0f
                                               alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:1.0f
                                           green:199.0f/255.0f
                                            blue:44.0f/255.0f
                                           alpha:1.0f];
    UIColor* colorBlack = [UIColor blackColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorAquamarine setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorYellow setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 3.0f, size.width, size.height / 3.0f));
    
    [colorBlack setFill];
    [[UIBezierPath triangleInSize: size] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
