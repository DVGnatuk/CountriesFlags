//
//  UIImage+Extension.m
//  CountriesFlags
//

#import "UIImage+Extension.h"

#import "UIImage+Armenia.h"
#import "UIImage+Austria.h"
#import "UIImage+Belgium.h"
#import "UIImage+Benin.h"
#import "UIImage+Botswana.h"
#import "UIImage+Colombia.h"
#import "UIImage+France.h"
#import "UIImage+Mali.h"
#import "UIImage+Monaco.h"
#import "UIImage+Netherlands.h"
#import "UIImage+Nigeria.h"
#import "UIImage+Poland.h"
#import "UIImage+Romania.h"
#import "UIImage+RussianFederation.h"
#import "UIImage+SierraLeone.h"
#import "UIImage+Thailand.h"
#import "UIImage+Ukraine.h"
#import "UIImage+UnitedArabEmirates.h"
#import "UIImage+Yemen.h"

@implementation UIImage (CountriesFlags)

+ (UIImage *)flagForCountry:(CountriesFlags)country size:(CGSize)size {
    switch (country) {
        case CountriesFlagsArmenia: return [UIImage flagArmeniaWithSize: size];
        case CountriesFlagsAustria: return [UIImage flagAustriaWithSize: size];
        case CountriesFlagsBelgium: return [UIImage flagBelgiumWithSize: size];
        case CountriesFlagsBenin: return [UIImage flagBeninWithSize: size];
        case CountriesFlagsBotswana: return [UIImage flagBotswanaWithSize: size];
        case CountriesFlagsColombia: return [UIImage flagColombiaWithSize: size];
        case CountriesFlagsFrance: return [UIImage flagFranceWithSize: size];
        case CountriesFlagsMali: return [UIImage flagMaliWithSize: size];
        case CountriesFlagsMonaco: return [UIImage flagMonacoWithSize: size];
        case CountriesFlagsNetherlands: return [UIImage flagNetherlandsWithSize: size];
        case CountriesFlagsNigeria: return [UIImage flagNigeriaWithSize: size];
        case CountriesFlagsPoland: return [UIImage flagPolandWithSize: size];
        case CountriesFlagsRomania: return [UIImage flagRomaniaWithSize: size];
        case CountriesFlagsRussianFederation: return [UIImage flagRussianFederationWithSize: size];
        case CountriesFlagsSierraLeone: return [UIImage flagSierraLeoneWithSize: size];
        case CountriesFlagsThailand: return [UIImage flagThailandWithSize: size];
        case CountriesFlagsUkraine: return [UIImage flagUkraineWithSize: size];
        case CountriesFlagsUnitedArabEmirates: return [UIImage flagUnitedArabEmiratesWithSize: size];
        // The official flag of Wallis and Futuna is the French national flag, as it is a French territory.
        case CountriesFlagsWallisAndFutuna: return [UIImage flagFranceWithSize: size];
        case CountriesFlagsYemen: return [UIImage flagYemenWithSize: size];
            
        default: return nil;
    }
}

@end
