//
//  UIBezierPath+AffineTransform.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIBezierPath (Rotate)

/**
 Rotates UIBezierPath around the specified center.
 
 @param angle Angle of rotation in degrees.
 @param center Center of rotation.
 */
- (void)rotateToAngle:(CGFloat)angle center:(CGPoint)center;

/**
 Translates UIBezierPath to specified CGPoint.
 
 @param point: CGPoint of translation.
 */
- (void)translateToPoint:(CGPoint)point;
@end

NS_ASSUME_NONNULL_END
