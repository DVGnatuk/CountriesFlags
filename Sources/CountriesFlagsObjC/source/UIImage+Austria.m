//
//  UIImage+Austria.m
//

#import "UIImage+Austria.h"

@implementation UIImage (Austria)

+(UIImage * _Nullable) flagAustriaWithSize:(CGSize)size {
    UIColor* colorWhite = [UIColor whiteColor];
    // The Austrian law does not specify the colour shades of the flag, but in May 2018,
    // the Ministry of Defence issued a regulation specified the red on the flag is Pantone 186 C.
    UIColor* colorRed = [UIColor colorWithRed:200.0f/255.0f
                                        green:16.0f/255.0f
                                         blue:46.0f/255.0f
                                        alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 3.0f, size.width, size.height / 3.0f));
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
