//
//  UIImage+China.m
//  CountriesFlags
//

#import "Countries/UIImage+China.h"

#import "Extensions/UIBezierPath+Star.h"
#import "Extensions/UIBezierPath+Rotate.h"

@implementation UIImage (China)

+ (UIImage * _Nullable)flagChinaWithSize:(CGSize)size {
    UIColor* colorRed = [UIColor colorWithRed:238.0f/255.0f
                                        green:28.0f/255.0f
                                         blue:37.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorYellow = [UIColor yellowColor];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorYellow setFill];
    [[UIBezierPath starWithSize:CGSizeMake(size.height / 2.0f, size.height / 2.0f)
                         radius:size.height / 20.0f * 6.0f / 2.0f
                           type:FlagStarTypeFivePointed] fill];

    UIBezierPath* path = [UIBezierPath starWithSize:CGSizeMake(size.height / 20.0f * 24.4f, size.height / 20.0f * 10.9f)
                                             radius:size.height / 20.0f
                                               type:FlagStarTypeFivePointed];
    [path rotateToAngle:20.0f center:CGPointMake(size.height / 20.0f, size.height / 20.0f)];
    [path fill];

    [[UIBezierPath starWithSize:CGSizeMake(size.height / 20.0f * 24.0f, size.height / 20.0f * 14.0f)
                         radius:size.height / 20.0f
                           type:FlagStarTypeFivePointed] fill];

    path = [UIBezierPath starWithSize:CGSizeMake(size.height / 20.0f * 20.2f, size.height / 20.0f * 22.8f)
                               radius:size.height / 20.0f
                                 type:FlagStarTypeFivePointed];
    [path rotateToAngle:45.0f center:CGPointMake(size.height, size.height / 20.0f * 10.0f)];
    [path fill];

    path = [UIBezierPath starWithSize:CGSizeMake(size.height / 20.0f * 20.1f, size.height / 20.0f * 12.5f)
                               radius:size.height / 20.0f
                                 type:FlagStarTypeFivePointed];
    [path rotateToAngle:24.0 center:CGPointMake(size.height, size.height / 20.0f * 4.0f)];
    [path fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
