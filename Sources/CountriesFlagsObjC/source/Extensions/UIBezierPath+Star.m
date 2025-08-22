//
//  UIBezierPath+Star.m
//  CountriesFlags
//

#import "Extensions/UIBezierPath+Star.h"

@implementation UIBezierPath (Star)

+ (UIBezierPath *)starWithSize:(CGSize)size radius:(CGFloat)radius type:(FlagStarTypes)type {
    UIBezierPath* polygonPath = [UIBezierPath bezierPath];

    CGFloat xCenter = size.width / 2.0f;
    CGFloat yCenter = size.height / 2.0f;

    [polygonPath moveToPoint:CGPointMake(xCenter, -radius + yCenter)];

    switch (type) {
        case FlagStarTypeFourPointed: {
            CGFloat innerRadius = radius * 2.0f / 6.0f;
            for (int index = 1; index < 8; index++) {
                CGFloat r = index % 2 == 0 ? radius : innerRadius;
                double angle = -M_PI / 2.0 + index * M_PI / 4.0;

                double x = r * cos(angle);
                double y = r * sin(angle);
                [polygonPath addLineToPoint:CGPointMake(xCenter + x, yCenter + y)];
            }
        }
            break;
            
        case FlagStarTypeFivePointed: {
            double theta = 2.0 * M_PI * 2.0f / 5.0f;
            for (int i = 1; i < 5; i++) {
                double x = radius * sin(i * theta);
                double y = radius * cos(i * theta);
                [polygonPath addLineToPoint:CGPointMake(xCenter + x, yCenter - y)];
//                NSLog(@"Five pointed star: x: %f, y: %f", x, y);
            }
        }
            break;
            
        case FlagStarTypeSixPointed: {
            CGFloat angle = -M_PI / 2.0f;
            for (int index = 0; index < 6; index++) {
                CGFloat xPoint = xCenter + cos(angle) * radius;
                CGFloat yPoint = yCenter + sin(angle) * radius;
                if (index == 0) {
                    [polygonPath moveToPoint:CGPointMake(xPoint, yPoint)];
                } else {
                    [polygonPath addLineToPoint:CGPointMake(xPoint, yPoint)];
                }
                angle += M_PI / 6.0f;

                [polygonPath addLineToPoint:CGPointMake(xCenter + cos(angle) * (radius * 0.58),
                                                        yCenter + sin(angle) * (radius * 0.58))];
                angle += M_PI / 6.0f;
            }
        }
            break;
            
        case FlagStarTypeSevenPointed: {
            CGFloat innerRadius = radius / 2.0f * 0.7f;
            CGFloat angleIncrement = M_PI * 2.0f / 7.0f;
            
            CGFloat startAngle = -M_PI / 2.0;
            [polygonPath moveToPoint:CGPointMake(xCenter + radius * cos(startAngle),
                                                 yCenter + radius * sin(startAngle))];
            
            for (int index = 1; index < 14; index++) {
                CGFloat angle = startAngle + angleIncrement * index;
                CGFloat currentRadius = index % 2 == 0 ? radius : innerRadius;
                
                [polygonPath addLineToPoint:CGPointMake(xCenter + currentRadius * cos(angle),
                                                        yCenter + currentRadius * sin(angle))];
            }
        }
            break;
            
        case FlagStarTypeEightPointed: {
            for (int index = 0; index < 16; index++) {
                CGFloat angle = index * M_PI / 8.0;
                CGFloat r = index % 2 == 0 ? radius : radius / 2.0f;
                CGPoint point = CGPointMake(xCenter + r * cos(angle),
                                            yCenter + r * sin(angle));
                if (index == 0) {
                    [polygonPath moveToPoint:point];
                } else {
                    [polygonPath addLineToPoint: point];
                }
            }
        }
            break;
            
        case FlagStarTypeTwelvePointed: {
            CGFloat innerRadius = radius * 0.5f;

            [polygonPath moveToPoint:CGPointMake(xCenter + radius * cos(0.0f), yCenter + radius * sin(0.0f))];

            for (int index = 1; index < 24; index++) {
                CGFloat angle = index * M_PI / 12.0f;
                CGFloat currentRadius = index % 2 == 0 ? radius : innerRadius;

                CGPoint point = CGPointMake(xCenter + currentRadius * cos(angle), yCenter + currentRadius * sin(angle));
                [polygonPath addLineToPoint:point];
            }
        }
            break;
            
        default:
            break;
    }

    [polygonPath closePath];
    return polygonPath;
}

@end
