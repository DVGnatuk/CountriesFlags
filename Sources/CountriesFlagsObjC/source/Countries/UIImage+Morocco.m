//
//  UIImage+Morocco.m
//  CountriesFlags
//

#import "Countries/UIImage+Morocco.h"

#import "Extensions/UIBezierPath+Star.h"

@implementation UIImage (Morocco)

+ (UIImage * _Nullable)flagMoroccoWithSize:(CGSize)size {
    UIColor* colorGreen = [UIColor colorWithRed:0.0f
                                          green:99.0f/255.0f
                                           blue:65.0f/255.0f
                                          alpha:1.0f];
    UIColor* colorRed = [UIColor colorWithRed:183.0f/255.0f
                                        green:49.0f/255.0f
                                         blue:44.0f/255.0f
                                        alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorGreen setStroke];
    UIBezierPath* path = [UIBezierPath starWithSize:size
                                             radius:size.height / 4.7f
                                               type:FlagStarTypeFivePointed];
    path.lineWidth = size.height / 4.0f * 0.095105652;
    [path stroke];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
