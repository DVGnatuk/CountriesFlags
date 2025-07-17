//
//  UIImage+Extension.m
//  CountriesFlags
//

#import "UIImage+Extension.h"

#import "UIImage+Armenia.h"
#import "UIImage+Austria.h"
#import "UIImage+Belgium.h"
#import "UIImage+France.h"
#import "UIImage+Monaco.h"
#import "UIImage+Poland.h"
#import "UIImage+Romania.h"
#import "UIImage+RussianFederation.h"
#import "UIImage+Ukraine.h"
#import "UIImage+UnitedArabEmirates.h"
#import "UIImage+Yemen.h"

@implementation UIImage (CountriesFlags)

+ (UIImage *)flagForCountry:(CountriesFlags)country size:(CGSize)size {
    switch (country) {
        case CountriesFlagsArmenia: return [UIImage flagArmeniaWithSize: size];
        case CountriesFlagsAustria: return [UIImage flagAustriaWithSize: size];
        case CountriesFlagsBelgium: return [UIImage flagBelgiumWithSize: size];
        case CountriesFlagsFrance: return [UIImage flagFranceWithSize: size];
        case CountriesFlagsMonaco: return [UIImage flagMonacoWithSize: size];
        case CountriesFlagsPoland: return [UIImage flagPolandWithSize: size];
        case CountriesFlagsRomania: return [UIImage flagRomaniaWithSize: size];
        case CountriesFlagsRussianFederation: return [UIImage flagRussianFederationWithSize: size];
        case CountriesFlagsUkraine: return [UIImage flagUkraineWithSize: size];
        case CountriesFlagsUnitedArabEmirates: return [UIImage flagUnitedArabEmiratesWithSize: size];
        case CountriesFlagsWallisAndFutuna: return [UIImage flagFranceWithSize: size]; // The official flag of Wallis and Futuna is the French national flag, as it is a French territory.
        case CountriesFlagsYemen: return [UIImage flagYemenWithSize: size];
            
        default: return nil;
    }
}

@end
