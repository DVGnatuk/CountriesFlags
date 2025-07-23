//
//  UIImage+Vietnam.m
//  CountriesFlags
//

#import "Countries/UIImage+Vietnam.h"

#import "Extensions/UIBezierPath+Extension.h"

@implementation UIImage (Vietnam)

+ (UIImage * _Nullable)flagVietnamWithSize:(CGSize)size {
    UIColor* colorYellow = [UIColor colorWithRed:1.0f
                                           green:1.0f
                                            blue:0.0f
                                           alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:218.0f/255.0f
                                        green:37.0f/255.0f
                                         blue:29.0f/255.0f
                                        alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorYellow setFill];
    CGFloat radius = size.height * 12.0 / 20.0 / 2.0;
    [[UIBezierPath starWithSize:size radius:radius] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
