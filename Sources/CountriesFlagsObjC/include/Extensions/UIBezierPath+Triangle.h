//
//  UIBezierPath+Triangle.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, FlagTriangleTypes)  {
    FlagTriangleTypeLeft = 0,
    FlagTriangleTypeLeftEquilateral
};

@interface UIBezierPath (Extension)

+ (UIBezierPath *)triangleInSize:(CGSize)size type:(FlagTriangleTypes)type;

@end

NS_ASSUME_NONNULL_END
