//
//  UIImage+CentralAfricanRepublic.m
//  CountriesFlags
//

#import "Countries/UIImage+CentralAfricanRepublic.h"

#import "Extensions/UIBezierPath+Star.h"

@implementation UIImage (CentralAfricanRepublic)

+ (UIImage * _Nullable)flagCentralAfricanRepublicWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:48.0f/255.0f
                                          blue:130.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorGreen = [UIColor colorWithRed:40.0f/255.0f
                                          green:151.0f/255.0f
                                           blue:40.0f/255.0f
                                          alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:1.0f
                                           green:206.0f/255.0f
                                            blue:0.0f/255.0f
                                           alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:210.0f/255.0f
                                        green:16.0f/255.0f
                                         blue:52.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 40.0f * 10.0f, size.width, size.height / 40.0f * 10.0f));
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 40.0f * 20.0f, size.width, size.height / 40.0f * 10.0f));
    
    [colorYellow setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 40.0f * 30.0f, size.width, size.height / 40.0f * 10.0f));
    
    [colorRed setFill];
    UIRectFill(CGRectMake(size.width / 60.0f * 25.0f, 0.0f, size.width / 60.0f * 10.0f, size.height));
    
    [colorYellow setFill];
    CGFloat radius = (size.height / 40.0f * 9.0f) / 2.0f;
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 60.0f * 10.0f, size.height / 40.0f * 5.5f)
                        radius:radius
                          type:FlagStarTypeFivePointed] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
