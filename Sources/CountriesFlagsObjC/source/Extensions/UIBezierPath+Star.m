//
//  UIBezierPath+Star.m
//  CountriesFlags
//

#import "Extensions/UIBezierPath+Star.h"

@implementation UIBezierPath (Star)

+ (UIBezierPath *)starAtPoint:(CGPoint)point
                       radius:(CGFloat)radius
                         type:(FlagStarTypes)type {
    UIBezierPath* path = [UIBezierPath bezierPath];
    
    [path moveToPoint:CGPointMake(point.x, -radius + point.y)];
    
    switch (type) {
        case FlagStarTypeFourPointed: {
            [self fourPointerStarAtPoint:point
                                  radius:radius
                             innerRadius:radius * 2.0f / 6.0f
                                    path:path];
        }
            break;
            
        case FlagStarTypeFivePointed: {
            [self fivePointerStarAtPoint:point radius:radius path:path];
        }
            break;
            
        case FlagStarTypeSixPointed: {
            [self sixPointerStarAtPoint:point radius:radius path:path];
        }
            break;
            
        case FlagStarTypeSevenPointed: {
            [self sevenPointerStarAtPoint:point radius:radius path:path];
        }
            break;
            
        case FlagStarTypeEightPointed: {
            [self eightPointerStarAtPoint:point radius:radius path:path];
        }
            break;
            
        case FlagStarTypeTwelvePointed: {
            [self twelvePointerStarAtPoint:point
                                    radius:radius
                               innerRadius:radius / 2.0f
                                      path:path];
        }
            break;
            
        case FlagStarTypeFourteenPointed: {
            [self fourteenPointerStarAtPoint:point radius:radius path:path];
        }
            break;
            
        case FlagStarTypeTwentyFourPointed: {
            [self twentyFourPointerStarAtPoint:point
                                        radius:radius
                                   innerRadius:radius / 2.0f
                                          path:path];
        }
            break;
            
        default:
            // TODO: throw exception?
            break;
    }
    
    [path closePath];
    return path;
}

+ (UIBezierPath *)starAtPoint:(CGPoint)point
                       radius:(CGFloat)radius
                  innerRadius:(CGFloat)innerRadius
                         type:(FlagStarTypes)type {
    UIBezierPath* path = [UIBezierPath bezierPath];
    
    [path moveToPoint:CGPointMake(point.x, -radius + point.y)];
    
    switch (type) {
        case FlagStarTypeFourPointed: {
            [self fourPointerStarAtPoint:point
                                  radius:radius
                             innerRadius:innerRadius
                                    path:path];
        }
            break;

        case FlagStarTypeTwelvePointed: {
            [self twelvePointerStarAtPoint:point
                                    radius:radius
                               innerRadius:innerRadius
                                      path:path];
        }
            break;
            
        case FlagStarTypeTwentyFourPointed: {
            [self twentyFourPointerStarAtPoint:point
                                        radius:radius
                                   innerRadius:innerRadius
                                          path:path];
        }
            break;
            
        default:
            // TODO: throw exception?
            break;
    }
    
    [path closePath];
    return path;
}

+ (void)fourPointerStarAtPoint:(CGPoint)point
                        radius:(CGFloat)radius
                   innerRadius:(CGFloat)innerRadius
                          path:(UIBezierPath *)path {
    for (int index = 1; index < 8; index++) {
        CGFloat r = index % 2 == 0 ? radius : innerRadius;
        double angle = -M_PI / 2.0 + index * M_PI / 4.0;

        double x = r * cos(angle);
        double y = r * sin(angle);
        [path addLineToPoint:CGPointMake(point.x + x, point.y + y)];
    }
}

+ (void)fivePointerStarAtPoint:(CGPoint)point
                        radius:(CGFloat)radius
                          path:(UIBezierPath *)path {
    double theta = 2.0 * M_PI * 2.0f / 5.0f;
    for (int i = 1; i < 5; i++) {
        double x = radius * sin(i * theta);
        double y = radius * cos(i * theta);
        [path addLineToPoint:CGPointMake(point.x + x, point.y - y)];
//         NSLog(@"Five pointed star: x: %f, y: %f", x, y);
    }
}

+ (void)sixPointerStarAtPoint:(CGPoint)point
                       radius:(CGFloat)radius
                         path:(UIBezierPath *)path {
    CGFloat angle = -M_PI / 2.0f;
    for (int index = 0; index < 6; index++) {
        CGFloat xPoint = point.x + cos(angle) * radius;
        CGFloat yPoint = point.y + sin(angle) * radius;
        if (index == 0) {
            [path moveToPoint:CGPointMake(xPoint, yPoint)];
        } else {
            [path addLineToPoint:CGPointMake(xPoint, yPoint)];
        }
        angle += M_PI / 6.0f;

        [path addLineToPoint:CGPointMake(point.x + cos(angle) * (radius * 0.58),
                                         point.y + sin(angle) * (radius * 0.58))];
        angle += M_PI / 6.0f;
    }
}

+ (void)sevenPointerStarAtPoint:(CGPoint)point
                         radius:(CGFloat)radius
                           path:(UIBezierPath *)path {
    CGFloat innerRadius = radius / 2.0f * 0.7f;
    CGFloat angleIncrement = M_PI * 2.0f / 7.0f;
    
    CGFloat startAngle = -M_PI / 2.0;
    [path moveToPoint:CGPointMake(point.x + radius * cos(startAngle),
                                  point.y + radius * sin(startAngle))];
    
    for (int index = 1; index < 14; index++) {
        CGFloat angle = startAngle + angleIncrement * index;
        CGFloat currentRadius = index % 2 == 0 ? radius : innerRadius;
        
        [path addLineToPoint:CGPointMake(point.x + currentRadius * cos(angle),
                                         point.y + currentRadius * sin(angle))];
    }
}

+ (void)eightPointerStarAtPoint:(CGPoint)point
                         radius:(CGFloat)radius
                           path:(UIBezierPath *)path {
    for (int index = 0; index < 16; index++) {
        CGFloat angle = index * M_PI / 8.0;
        CGFloat r = index % 2 == 0 ? radius : radius / 2.0f;
        if (index == 0) {
            [path moveToPoint:CGPointMake(point.x + r * cos(angle),
                                          point.y + r * sin(angle))];
        } else {
            [path addLineToPoint:CGPointMake(point.x + r * cos(angle),
                                             point.y + r * sin(angle))];
        }
    }
}

+ (void)twelvePointerStarAtPoint:(CGPoint)point
                          radius:(CGFloat)radius
                     innerRadius:(CGFloat)innerRadius
                            path:(UIBezierPath *)path {
    [path moveToPoint:CGPointMake(point.x + radius * cos(0.0f),
                                  point.y + radius * sin(0.0f))];

    for (int index = 1; index < 24; index++) {
        CGFloat angle = index * M_PI / 12.0f;
        CGFloat currentRadius = index % 2 == 0 ? radius : innerRadius;

        [path addLineToPoint:CGPointMake(point.x + currentRadius * cos(angle),
                                         point.y + currentRadius * sin(angle))];
    }
}

+ (void)fourteenPointerStarAtPoint:(CGPoint)point
                            radius:(CGFloat)radius
                              path:(UIBezierPath *)path {
    CGFloat innerRadius = radius * 2.0f / 5.0f;
    CGFloat angleIncrement = M_PI * 2.0f / 28.0f;
    
    for (int index = 0; index < 28; index++) {
        CGFloat currentRadius = index % 2 == 0 ? radius : innerRadius;
        CGFloat angle = angleIncrement * index - M_PI / 2.0f;

        if (index == 0) {
            [path moveToPoint:(CGPointMake(point.x + radius * cos(angle), point.y + radius * sin(angle)))];
        } else {
            [path addLineToPoint:(CGPointMake(point.x + currentRadius * cos(angle), point.y + currentRadius * sin(angle)))];
        }
    }
}

+ (void)twentyFourPointerStarAtPoint:(CGPoint)point
                              radius:(CGFloat)radius
                         innerRadius:(CGFloat)innerRadius
                                path:(UIBezierPath *)path {
    [path moveToPoint:CGPointMake(point.x + radius * cos(0.0f),
                                  point.y + radius * sin(0.0f))];

    for (int index = 1; index < 48; index++) {
        CGFloat angle = index * M_PI / 24.0f;
        CGFloat currentRadius = index % 2 == 0 ? radius : innerRadius;

        [path addLineToPoint:CGPointMake(point.x + currentRadius * cos(angle),
                                         point.y + currentRadius * sin(angle))];
    }
}

@end
