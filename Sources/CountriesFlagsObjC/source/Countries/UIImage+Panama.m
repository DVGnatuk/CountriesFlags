//
//  UIImage+Panama.m
//  CountriesFlags
//

#import "Countries/UIImage+Panama.h"

#import "Extensions/UIBezierPath+Star.h"

@implementation UIImage (Panama)

+ (UIImage * _Nullable)flagPanamaWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:1.0f/255.0f
                                         green:30.0f/255.0f
                                          blue:86.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:219.0f/255.0f
                                        green:10.0f/255.0f
                                         blue:19.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorRed setFill];
    UIRectFill(CGRectMake(size.width / 2.0f, 0.0f, size.width / 2.0f, size.height / 2.0f));
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 2.0f, size.width / 2.0f, size.height / 2.0f));
    
    CGFloat radius = size.height / 8.0f * 1.111145618;
    CGFloat xDelta = size.height / 8.0f * 0.105572809;
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 4.0f, (size.height / 2.0f + xDelta * 2.0f) / 2.0f)
                        radius:radius
                          type:FlagStarTypeFivePointed] fill];
    [colorRed setFill];
    [[UIBezierPath starAtPoint:CGPointMake(size.width * 0.75f, (size.height * 1.5f + xDelta * 2.0f) / 2.0f)
                        radius:radius
                          type:FlagStarTypeFivePointed] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
