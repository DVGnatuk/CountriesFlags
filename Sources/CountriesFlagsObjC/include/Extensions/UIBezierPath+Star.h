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
    FlagStarTypeTwelvePointed
};

@interface UIBezierPath (Star)

+ (UIBezierPath *)starWithSize:(CGSize)size radius:(CGFloat)radius type:(FlagStarTypes)type;

@end

NS_ASSUME_NONNULL_END
