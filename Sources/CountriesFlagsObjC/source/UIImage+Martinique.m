//
//  UIImage+Martinique.m
//  CountriesFlags
//

#import "UIImage+Martinique.h"

#import "UIBezierPath+Extension.h"

@implementation UIImage (Martinique)

+(UIImage * _Nullable) flagMartiniqueWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:239.0f/255.0f
                                        green:25.0f/255.0f
                                         blue:35.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorGreen = [UIColor colorWithRed:0.0f
                                          green:166.0f/255.0f
                                           blue:80.0f/255.0f
                                          alpha:1.0f];
    UIColor* colorBlack = [UIColor colorWithRed:35.0f/255.0f
                                          green:31.0f/255.0f
                                           blue:30.0f/255.0f
                                          alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorBlack setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 2.0f, size.width, size.height / 2.0f));
    
    [colorRed setFill];
    [[UIBezierPath triangleInSize: CGSizeMake(size.width / 2.0f, size.height)
                             type: FlagTriangleTypeLeft] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
