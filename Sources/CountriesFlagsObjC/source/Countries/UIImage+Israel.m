//
//  UIImage+Israel.m
//  CountriesFlags
//

#import "Countries/UIImage+Israel.h"

#import "Extensions/UIBezierPath+Triangle.h"
#import "Extensions/UIBezierPath+AffineTransform.h"
#import "Extensions/CGSize+Extension.h"

@implementation UIImage (Israel)

+ (UIImage *)flagIsraelWithSize:(CGSize)size {
    UIColor* colorBlue = [UIColor colorWithRed:0.0f
                                         green:56.0f/255.0f
                                          blue:184.0f/255.0f
                                         alpha:1.0f];
    UIColor* colorWhite = [UIColor whiteColor];
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0.0f);
    
    [colorWhite setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorBlue setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 160.0f * 15.0f, size.width, size.height / 160.0f * 25.0f));
    UIRectFill(CGRectMake(0.0f, size.height / 160.0 * 120.0, size.width, size.height / 160.0f * 25.0f));
    
    [colorBlue setStroke];
    CGFloat triangleRadius = size.height / 160.0f * 50.5f;
    CGPoint triangleCenter = CGPointMake(size.width / 2.0f, size.height / 2.0f - size.height / 160.0f * 7.3f);
    UIBezierPath* path = [UIBezierPath triangleAtPoint:triangleCenter radius:triangleRadius];
    path.lineWidth = size.height / 160.0f * 5.4f;
    [path stroke];

    [path rotateToAngle:180.0 center:CGSizeMidPoint(size)];
    [path stroke];
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image != nil ? image : [UIImage new];
}

@end
