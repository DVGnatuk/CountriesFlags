//
//  UIImage+GuineaBissau.m
//  CountriesFlags
//

#import "Countries/UIImage+GuineaBissau.h"

#import "Extensions/UIBezierPath+Star.h"

@implementation UIImage (GuineaBissau)

+ (UIImage * _Nullable)flagGuineaBissauWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:206.0f/255.0f
                                        green:17.0f/255.0f
                                         blue:38.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:252.0f/255.0f
                                           green:209.0f/255.0f
                                            blue:22.0f/255.0f
                                           alpha:1.0f];
    UIColor* colorGreen = [UIColor colorWithRed:0.0f
                                          green:158.0f/255.0f
                                           blue:73.0f/255.0f
                                          alpha:1.0f];
    UIColor* colorBlack = [UIColor blackColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorYellow setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 2.0, size.width, size.height / 2.0));
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 2.0, size.width, size.height / 2.0));
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width / 3.0f, size.height));
    
    [colorBlack setFill];
    [[UIBezierPath starWithSize:CGSizeMake(size.width / 3.0f, size.height)
                         radius:size.height / 3.0f / 2.0f
                           type:FlagStarTypeFivePointed] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
