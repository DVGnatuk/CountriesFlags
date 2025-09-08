//
//  UIImage+Malaysia.m
//  CountriesFlags
//

#import "Countries/UIImage+Malaysia.h"

#import "Extensions/UIBezierPath+Star.h"

@implementation UIImage (Malaysia)

+ (UIImage * _Nullable)flagMalaysiaWithSize:(CGSize)size {
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorRed = [UIColor colorWithRed:204.0f/255.0f
                                        green:0.0f
                                         blue:0.0f
                                        alpha:1.0f];
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:0.0f
                                          blue:102.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:1.0f
                                           green:204.0f/255.0f
                                            blue:0.0f
                                           alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorRed setFill];
    for (int index = 0; index <= 12; index += 2) {
        UIRectFill(CGRectMake(0.0, size.height / 14.0f * index, size.width, size.height / 14.0f));
    }

    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width / 2.0f, size.height / 14.0f * 8.0f));

    [colorYellow setFill];
    [[UIBezierPath bezierPathWithArcCenter:CGPointMake(size.width / 28.0 * 5.75, size.height / 14.0 * 4.0)
                                    radius:size.height / 14.0f * 6.0f / 2.0f
                                startAngle:0.0f
                                  endAngle:M_PI * 2.0f
                                 clockwise:YES] fill];

    [colorBlue setFill];
    [[UIBezierPath bezierPathWithArcCenter:CGPointMake(size.width / 28.0f * 6.4166f, size.height / 14.0f * 4.0f)
                                    radius:size.height / 14.0f * 5.333f / 2.0f
                                startAngle:0.0f
                                  endAngle:M_PI * 2.0f
                                 clockwise:YES] fill];

    [colorYellow setFill];
    [[UIBezierPath starWithSize:CGSizeMake(size.width / 28.0f * 17.5f, size.height / 14.0f * 8.0f)
                         radius:size.height / 14.0f * 5.0f / 2.0f
                           type:FlagStarTypeFourteenPointed] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
