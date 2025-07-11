//
//  UIImage+Extension.m
//  CountriesFlags
//

#import "UIImage+Extension.h"

#import "UIImage+Ukraine.h"
#import "UIImage+Poland.h"

@implementation UIImage (CountriesFlags)

+ (UIImage *)flagForCountry:(CountriesFlags)country size:(CGSize)size {
    switch (country) {
        case Poland: return [UIImage flagPolandWithSize: size];
        case Ukraine: return [UIImage flagUkraineWithSize: size];
            
        default: return nil;
    }
}

@end
