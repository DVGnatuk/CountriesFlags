//
//  UIImage+Aruba.m
//  CountriesFlags
//

#import "Countries/UIImage+Aruba.h"

#import "Extensions/UIBezierPath+Star.h"

@implementation UIImage (Aruba)

+ (UIImage *)flagArubaWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:65.0f/255.0f
                                         green:143.0f/255.0f
                                          blue:222.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:1.0f
                                           green:210.0f/255.0f
                                            blue:0.0f
                                           alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:246.0f/255.0f
                                        green:52.0f/255.0f
                                         blue:63.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorYellow setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 18.0f * 12.0f, size.width, size.height / 18.0f));
    UIRectFill(CGRectMake(0.0f, size.height / 18.0f * 14.0f, size.width, size.height / 18.0f));
    
    [colorRed setFill];
    [colorWhite setStroke];
    UIBezierPath* path = [UIBezierPath starAtPoint:CGPointMake(size.width / 27.0f * 4.0f, size.height / 18.0f * 4.0f)
                                            radius:size.height / 18.0f * 2.68f
                                              type:FlagStarTypeFourPointed];
    path.lineWidth = size.height / 95.0f;
    [path fill];
    [path stroke];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image != nil ? image : [UIImage new];
}

@end
