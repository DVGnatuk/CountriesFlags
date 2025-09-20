//
//  UIBezierPath+Star.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, FlagStarTypes) {
    FlagStarTypeFourPointed = 0,
    FlagStarTypeFivePointed,
    FlagStarTypeSixPointed,
    FlagStarTypeSevenPointed,
    FlagStarTypeEightPointed,
    FlagStarTypeTwelvePointed,
    FlagStarTypeFourteenPointed,
    FlagStarTypeTwentyFourPointed
};

@interface UIBezierPath (Star)

+ (UIBezierPath *)starAtPoint:(CGPoint)point radius:(CGFloat)radius type:(FlagStarTypes)type;
+ (UIBezierPath *)starAtPoint:(CGPoint)point radius:(CGFloat)radius innerRadius:(CGFloat)innerRadius type:(FlagStarTypes)type;

@end

NS_ASSUME_NONNULL_END
