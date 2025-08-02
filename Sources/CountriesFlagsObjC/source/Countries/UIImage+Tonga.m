//
//  UIImage+Tonga.m
//  CountriesFlags
//

#import "Countries/UIImage+Tonga.h"

#import "Extensions/UIBezierPath+Plus.h"

@implementation UIImage (Tonga)

+ (UIImage * _Nullable)flagTongaWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:193.0f/255.0f
                                        green:0.0f
                                         blue:0.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width / 48.0f * 20.0f, size.height / 2.0f));
    
    [colorRed setFill];
    [[UIBezierPath plusInSize:CGSizeMake(size.width / 48.0f * 20.0f, size.height / 2.0f)
                    sideWidth:size.width / 48.0f * 3.0f] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
