//
//  UIImage+CapeVerde.m
//  CountriesFlags
//

#import "Countries/UIImage+CapeVerde.h"

#import "Extensions/UIBezierPath+Star.h"

@implementation UIImage (CapeVerde)

+ (UIImage * _Nullable)flagCapeVerdeWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:56.0f/255.0f
                                          blue:147.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorRed = [UIColor colorWithRed:207.0f/255.0f
                                        green:32.0f/255.0f
                                         blue:39.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorYellow = [UIColor colorWithRed:247.0f/255.0f
                                           green:209.0f/255.0f
                                            blue:22.0f/255.0f
                                           alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 12.0f * 6.0f, size.width, size.height / 12.0f * 3.0f));
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 12.0f * 7.0f, size.width, size.height / 12.0f));

    [colorYellow setFill];
    CGFloat radius = size.height / 12.0f / 2.0f;
    CGFloat yOffset = size.height / 12.0f * 0.1f;
    // 1 column
    [[UIBezierPath starWithSize:CGSizeMake(size.width / 80.0f * 37.5f, size.height / 12.0f * 13.0f + yOffset)
                         radius:radius
                           type:FlagStarTypeFivePointed] fill];
    [[UIBezierPath starWithSize:CGSizeMake(size.width / 80.0f * 37.5f, size.height / 12.0f * 17.0f + yOffset)
                         radius:radius
                           type:FlagStarTypeFivePointed] fill];
    // 2 column
    [[UIBezierPath starWithSize:CGSizeMake(size.width / 80.0f * 46.1f, size.height / 12.0f * 10.0f + yOffset)
                         radius:radius
                           type:FlagStarTypeFivePointed] fill];
    [[UIBezierPath starWithSize:CGSizeMake(size.width / 80.0f * 46.1f, size.height / 12.0f * 19.7f + yOffset)
                         radius:radius
                           type:FlagStarTypeFivePointed] fill];
    // 3 column
    [[UIBezierPath starWithSize:CGSizeMake(size.width / 80.0f * 59.8f, size.height / 12.0f * 8.9f + yOffset)
                         radius:radius
                           type:FlagStarTypeFivePointed] fill];
    [[UIBezierPath starWithSize:CGSizeMake(size.width / 80.0f * 59.8f, size.height / 12.0f * 20.9f + yOffset)
                         radius:radius
                           type:FlagStarTypeFivePointed] fill];
    // 4 column
    [[UIBezierPath starWithSize:CGSizeMake(size.width / 80.0f * 73.7f, size.height / 12.0f * 10.0f + yOffset)
                         radius:radius
                           type:FlagStarTypeFivePointed] fill];
    [[UIBezierPath starWithSize:CGSizeMake(size.width / 80.0f * 73.7f, size.height / 12.0f * 19.7f + yOffset)
                         radius:radius
                           type:FlagStarTypeFivePointed] fill];
    // 5 column
    [[UIBezierPath starWithSize:CGSizeMake(size.width / 80.0f * 82.0f, size.height / 12.0f * 13.0f + yOffset)
                         radius:radius
                           type:FlagStarTypeFivePointed] fill];
    [[UIBezierPath starWithSize:CGSizeMake(size.width / 80.0f * 82.0f, size.height / 12.0f * 17.0f + yOffset)
                         radius:radius
                           type:FlagStarTypeFivePointed] fill];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
