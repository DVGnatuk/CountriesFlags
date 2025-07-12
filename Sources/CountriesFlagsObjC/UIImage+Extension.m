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
        case CountriesFlagsPoland: return [UIImage flagPolandWithSize: size];
        case CountriesFlagsUkraine: return [UIImage flagUkraineWithSize: size];
            
        default: return nil;
    }
}

@end
