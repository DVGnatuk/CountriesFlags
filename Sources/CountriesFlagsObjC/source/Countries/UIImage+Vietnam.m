//
//  UIImage+Vietnam.m
//  CountriesFlags
//

#import "Countries/UIImage+Vietnam.h"

#import "Extensions/UIBezierPath+Star.h"
#import "Extensions/CGSize+Extension.h"

@implementation UIImage (Vietnam)

+ (UIImage *)flagVietnamWithSize:(CGSize)size {
    UIColor* colorYellow = [UIColor yellowColor];
    UIColor* colorRed = [UIColor colorWithRed:218.0f/255.0f
                                        green:37.0f/255.0f
                                         blue:29.0f/255.0f
                                        alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorYellow setFill];
    [[UIBezierPath starAtPoint:CGSizeMidPoint(size)
                        radius:size.height * 12.0f / 40.0f
                          type:FlagStarTypeFivePointed] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image != nil ? image : [UIImage new];
}

@end
