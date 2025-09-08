//
//  UIBezierPath+Star.m
//  CountriesFlags
//

#import "Extensions/UIBezierPath+Star.h"

@implementation UIBezierPath (Star)

+ (UIBezierPath *)starWithSize:(CGSize)size radius:(CGFloat)radius type:(FlagStarTypes)type {
    UIBezierPath* path = [UIBezierPath bezierPath];

    CGFloat xCenter = size.width / 2.0f;
    CGFloat yCenter = size.height / 2.0f;

    [path moveToPoint:CGPointMake(xCenter, -radius + yCenter)];

    switch (type) {
        case FlagStarTypeFourPointed: {
            [self fourPointerStarWithRadius:radius xCenter:xCenter yCenter:yCenter path:path];
        }
            break;
            
        case FlagStarTypeFivePointed: {
            [self fivePointerStarWithRadius:radius xCenter:xCenter yCenter:yCenter path:path];
        }
            break;
            
        case FlagStarTypeSixPointed: {
            [self sixPointerStarWithRadius:radius xCenter:xCenter yCenter:yCenter path:path];
        }
            break;
            
        case FlagStarTypeSevenPointed: {
            [self sevenPointerStarWithRadius:radius xCenter:xCenter yCenter:yCenter path:path];
        }
            break;
            
        case FlagStarTypeEightPointed: {
            [self eightPointerStarWithRadius:radius xCenter:xCenter yCenter:yCenter path:path];
        }
            break;
            
        case FlagStarTypeTwelvePointed: {
            [self twelvePointerStarWithRadius:radius xCenter:xCenter yCenter:yCenter path:path];
        }
            break;
            
        case FlagStarTypeFourteenPointed: {
            [self fourteenPointerStarWithRadius:radius xCenter:xCenter yCenter:yCenter path:path];
        }
            break;
            
        default:
            break;
    }

    [path closePath];
    return path;
}

+ (void)fourPointerStarWithRadius:(CGFloat)radius
                          xCenter:(CGFloat)xCenter
                          yCenter:(CGFloat)yCenter
                             path:(UIBezierPath *)path {
    CGFloat innerRadius = radius * 2.0f / 6.0f;
    for (int index = 1; index < 8; index++) {
        CGFloat r = index % 2 == 0 ? radius : innerRadius;
        double angle = -M_PI / 2.0 + index * M_PI / 4.0;

        double x = r * cos(angle);
        double y = r * sin(angle);
        [path addLineToPoint:CGPointMake(xCenter + x, yCenter + y)];
    }
}

+ (void)fivePointerStarWithRadius:(CGFloat)radius
                          xCenter:(CGFloat)xCenter
                          yCenter:(CGFloat)yCenter
                             path:(UIBezierPath *)path {
    double theta = 2.0 * M_PI * 2.0f / 5.0f;
    for (int i = 1; i < 5; i++) {
        double x = radius * sin(i * theta);
        double y = radius * cos(i * theta);
        [path addLineToPoint:CGPointMake(xCenter + x, yCenter - y)];
//         NSLog(@"Five pointed star: x: %f, y: %f", x, y);
    }
}

+ (void)sixPointerStarWithRadius:(CGFloat)radius
                         xCenter:(CGFloat)xCenter
                         yCenter:(CGFloat)yCenter
                            path:(UIBezierPath *)path {
    CGFloat angle = -M_PI / 2.0f;
    for (int index = 0; index < 6; index++) {
        CGFloat xPoint = xCenter + cos(angle) * radius;
        CGFloat yPoint = yCenter + sin(angle) * radius;
        if (index == 0) {
            [path moveToPoint:CGPointMake(xPoint, yPoint)];
        } else {
            [path addLineToPoint:CGPointMake(xPoint, yPoint)];
        }
        angle += M_PI / 6.0f;

        [path addLineToPoint:CGPointMake(xCenter + cos(angle) * (radius * 0.58),
                                         yCenter + sin(angle) * (radius * 0.58))];
        angle += M_PI / 6.0f;
    }
}

+ (void)sevenPointerStarWithRadius:(CGFloat)radius
                           xCenter:(CGFloat)xCenter
                           yCenter:(CGFloat)yCenter
                              path:(UIBezierPath *)path {
    CGFloat innerRadius = radius / 2.0f * 0.7f;
    CGFloat angleIncrement = M_PI * 2.0f / 7.0f;
    
    CGFloat startAngle = -M_PI / 2.0;
    [path moveToPoint:CGPointMake(xCenter + radius * cos(startAngle),
                                  yCenter + radius * sin(startAngle))];
    
    for (int index = 1; index < 14; index++) {
        CGFloat angle = startAngle + angleIncrement * index;
        CGFloat currentRadius = index % 2 == 0 ? radius : innerRadius;
        
        [path addLineToPoint:CGPointMake(xCenter + currentRadius * cos(angle),
                                         yCenter + currentRadius * sin(angle))];
    }
}

+ (void)eightPointerStarWithRadius:(CGFloat)radius
                           xCenter:(CGFloat)xCenter
                           yCenter:(CGFloat)yCenter
                              path:(UIBezierPath *)path {
    for (int index = 0; index < 16; index++) {
        CGFloat angle = index * M_PI / 8.0;
        CGFloat r = index % 2 == 0 ? radius : radius / 2.0f;
        CGPoint point = CGPointMake(xCenter + r * cos(angle),
                                    yCenter + r * sin(angle));
        if (index == 0) {
            [path moveToPoint:point];
        } else {
            [path addLineToPoint: point];
        }
    }
}

+ (void)twelvePointerStarWithRadius:(CGFloat)radius
                            xCenter:(CGFloat)xCenter
                            yCenter:(CGFloat)yCenter
                               path:(UIBezierPath *)path {
    CGFloat innerRadius = radius * 0.5f;

    [path moveToPoint:CGPointMake(xCenter + radius * cos(0.0f), yCenter + radius * sin(0.0f))];

    for (int index = 1; index < 24; index++) {
        CGFloat angle = index * M_PI / 12.0f;
        CGFloat currentRadius = index % 2 == 0 ? radius : innerRadius;

        CGPoint point = CGPointMake(xCenter + currentRadius * cos(angle), yCenter + currentRadius * sin(angle));
        [path addLineToPoint:point];
    }
}

+ (void)fourteenPointerStarWithRadius:(CGFloat)radius
                              xCenter:(CGFloat)xCenter
                              yCenter:(CGFloat)yCenter
                                 path:(UIBezierPath *)path {
    CGFloat innerRadius = radius * 2.0f / 5.0f;
    CGFloat angleIncrement = M_PI * 2.0f / 28.0f;

    for (int index = 0; index < 28; index++) {
        CGFloat currentRadius = index % 2 == 0 ? radius : innerRadius;
        CGFloat angle = angleIncrement * index - M_PI / 2.0f;

        if (index == 0) {
            [path moveToPoint:(CGPointMake(xCenter + radius * cos(angle), yCenter + radius * sin(angle)))];
        } else {
            [path addLineToPoint:(CGPointMake(xCenter + currentRadius * cos(angle), yCenter + currentRadius * sin(angle)))];
        }
    }
}

@end
