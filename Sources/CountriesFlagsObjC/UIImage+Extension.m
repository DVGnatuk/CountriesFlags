//
//  UIImage+Extension.m
//  CountriesFlags
//

#import "UIImage+Extension.h"

#import "UIImage+Ukraine.h"

@implementation UIImage (CountriesFlags)

+ (UIImage * _Nullable)flagForCountry:(CountriesFlags)country size:(CGSize)size {
    switch (country) {
        case Ukraine: {
            return nil;//[self flagUkraineWithSize: size];
        }
            break;
            
        default: return nil;
    }
}

@end
