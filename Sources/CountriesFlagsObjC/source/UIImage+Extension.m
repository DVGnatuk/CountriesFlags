//
//  UIImage+Extension.m
//  CountriesFlags
//

#import "UIImage+Extension.h"

#import "UIImage+Armenia.h"
#import "UIImage+Poland.h"
#import "UIImage+RussianFederation.h"
#import "UIImage+Ukraine.h"

@implementation UIImage (CountriesFlags)

+ (UIImage *)flagForCountry:(CountriesFlags)country size:(CGSize)size {
    switch (country) {
        case CountriesFlagsArmenia: return [UIImage flagArmeniaWithSize: size];
        case CountriesFlagsPoland: return [UIImage flagPolandWithSize: size];
        case CountriesFlagsRussianFederation: return [UIImage flagRussianFederationWithSize: size];
        case CountriesFlagsUkraine: return [UIImage flagUkraineWithSize: size];
            
        default: return nil;
    }
}

@end
