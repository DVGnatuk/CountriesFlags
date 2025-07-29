//
//  UIImage+RepublicCongo.h
//  CountriesFlags
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (RepublicCongo)

/**
 [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_the_Republic_of_the_Congo "wikipedia"
 
 Generates the flag of the Republic of the Congo.
 For more information see [wikipedia].

 - Parameters:
    - size: image size.
 
 - Returns: Returns the flag of the Republic of the Congo.
 */
+ (UIImage * _Nullable)flagRepublicCongoWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
