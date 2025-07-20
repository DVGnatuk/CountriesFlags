//
//  UIImage+Poland.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Poland)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Poland "wikipedia"
 
 Generates the flag of Poland.
 For more information see [wikipedia].
 
 - Parameters:
    - size: image size.
 
 - Returns: Returns the flag of Poland.
 */
+(UIImage * _Nullable) flagPolandWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
