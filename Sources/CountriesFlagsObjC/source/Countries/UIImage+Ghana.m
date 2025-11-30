//
//  UIImage+Ghana.m
//  CountriesFlags
//

#import "Countries/UIImage+Ghana.h"

#import "Extensions/UIBezierPath+Star.h"

@implementation UIImage (Ghana)

+ (UIImage *)flagGhanaWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:207.0f/255.0f
                                        green:9.0f/255.0f
                                         blue:33.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:252.0f/255.0f
                                           green:210.0f/255.0f
                                            blue:15.0f/255.0f
                                           alpha:1.0f];
    UIColor* colorGreen = [UIColor colorWithRed:0.0f
                                          green:107.0f/255.0f
                                           blue:61.0f/255.0f
                                          alpha:1.0f];
    UIColor* colorBlack = [UIColor blackColor];

    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorYellow setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 3.0f, size.width, size.height / 3.0f));
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 3.0f * 2.0f, size.width, size.height / 3.0f));
    
    [colorBlack setFill];
    CGFloat radius = (size.height / 12.0f) * 4.422291236 / 2.0f;
    CGFloat xDelta = (size.height / 12.0f) * 0.211145618;
    [[UIBezierPath starAtPoint:CGPointMake(size.width / 2.0f, (size.height + xDelta * 2.0f) / 2.0f)
                        radius:radius
                          type:FlagStarTypeFivePointed] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image != nil ? image : [UIImage new];
}

@end
