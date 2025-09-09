//
//  CGSize+Extension.h
//  CountriesFlags
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

CG_INLINE CGPoint CGSizeMidPoint(CGSize size) {
    return CGPointMake(size.width / 2.0f, size.height / 2.0f);
}

CG_INLINE CGSize CGSizeHalfSize(CGSize size) {
    return CGSizeMake(size.width / 2.0f, size.height / 2.0f);
}
