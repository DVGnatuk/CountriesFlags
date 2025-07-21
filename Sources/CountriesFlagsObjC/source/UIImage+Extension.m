//
//  UIImage+Extension.m
//  CountriesFlags
//

#import "UIImage+Extension.h"

#import "UIImage+Armenia.h"
#import "UIImage+Austria.h"
#import "UIImage+Bahamas.h"
#import "UIImage+Bahrain.h"
#import "UIImage+Bangladesh.h"
#import "UIImage+Belgium.h"
#import "UIImage+Benin.h"
#import "UIImage+Botswana.h"
#import "UIImage+Bulgaria.h"
#import "UIImage+Chad.h"
#import "UIImage+Colombia.h"
#import "UIImage+CostaRica.h"
#import "UIImage+CoteDIvoire.h"
#import "UIImage+CzechRepublic.h"
#import "UIImage+Denmark.h"
#import "UIImage+FaroeIslands.h"
#import "UIImage+Estonia.h"
#import "UIImage+Finland.h"
#import "UIImage+France.h"
#import "UIImage+Iceland.h"
#import "UIImage+Ireland.h"
#import "UIImage+Mali.h"
#import "UIImage+Martinique.h"
#import "UIImage+Monaco.h"
#import "UIImage+Netherlands.h"
#import "UIImage+Nigeria.h"
#import "UIImage+Norway.h"
#import "UIImage+Poland.h"
#import "UIImage+Romania.h"
#import "UIImage+RussianFederation.h"
#import "UIImage+Seychelles.h"
#import "UIImage+SierraLeone.h"
#import "UIImage+Sweden.h"
#import "UIImage+Switzerland.h"
#import "UIImage+Thailand.h"
#import "UIImage+Tonga.h"
#import "UIImage+Ukraine.h"
#import "UIImage+UnitedArabEmirates.h"
#import "UIImage+Yemen.h"

@implementation UIImage (CountriesFlags)

+ (UIImage *)flagForCountry:(CountriesFlags)country size:(CGSize)size {
    switch (country) {
        case CountriesFlagsArmenia: return [UIImage flagArmeniaWithSize: size];
        case CountriesFlagsAustria: return [UIImage flagAustriaWithSize: size];
        case CountriesFlagsBahamas: return [UIImage flagBahamasWithSize: size];
        case CountriesFlagsBahrain: return [UIImage flagBahrainWithSize: size];
        case CountriesFlagsBangladesh: return [UIImage flagBangladeshWithSize: size];
        case CountriesFlagsBelgium: return [UIImage flagBelgiumWithSize: size];
        case CountriesFlagsBenin: return [UIImage flagBeninWithSize: size];
        case CountriesFlagsBotswana: return [UIImage flagBotswanaWithSize: size];
        case CountriesFlagsBulgaria: return [UIImage flagBulgariaWithSize: size];
        case CountriesFlagsChad: return [UIImage flagChadWithSize: size];
        case CountriesFlagsColombia: return [UIImage flagColombiaWithSize: size];
        case CountriesFlagsCostaRica: return [UIImage flagCostaRicaWithSize: size];
        case CountriesFlagsCoteDIvoire: return [UIImage flagCoteDIvoireWithSize: size];
        case CountriesFlagsCzechRepublic: return [UIImage flagCzechRepublicWithSize: size];
        case CountriesFlagsDenmark: return [UIImage flagDenmarkWithSize: size];
        case CountriesFlagsFaroeIslands: return [UIImage flagFaroeIslandsWithSize: size];
        case CountriesFlagsEstonia: return [UIImage flagEstoniaWithSize: size];
        case CountriesFlagsFinland: return [UIImage flagFinlandWithSize: size];
        case CountriesFlagsFrance: return [UIImage flagFranceWithSize: size];
        // The official flag of French Guiana is the French flag due to it being an overseas region and department of France.
        case CountriesFlagsFrenchGuiana: return [UIImage flagFranceWithSize: size];
        // The French tricolore is the official national flag used in Guadeloupe.
        case CountriesFlagsGuadeloupe: return [UIImage flagFranceWithSize: size];
        case CountriesFlagsIceland: return [UIImage flagIcelandWithSize: size];
        case CountriesFlagsIreland: return [UIImage flagIrelandWithSize: size];
        case CountriesFlagsMali: return [UIImage flagMaliWithSize: size];
        case CountriesFlagsMartinique: return [UIImage flagMartiniqueWithSize: size];
        case CountriesFlagsMonaco: return [UIImage flagMonacoWithSize: size];
        case CountriesFlagsNetherlands: return [UIImage flagNetherlandsWithSize: size];
        case CountriesFlagsNigeria: return [UIImage flagNigeriaWithSize: size];
        case CountriesFlagsNorway: return [UIImage flagNorwayWithSize: size];
        case CountriesFlagsPoland: return [UIImage flagPolandWithSize: size];
        case CountriesFlagsRomania: return [UIImage flagRomaniaWithSize: size];
        case CountriesFlagsRussianFederation: return [UIImage flagRussianFederationWithSize: size];
        case CountriesFlagsSeychelles: return [UIImage flagSeychellesWithSize: size];
        case CountriesFlagsSierraLeone: return [UIImage flagSierraLeoneWithSize: size];
        case CountriesFlagsSweden: return [UIImage flagSwedenWithSize: size];
        case CountriesFlagsSwitzerland: return [UIImage flagSwitzerlandWithSize: size];
        case CountriesFlagsThailand: return [UIImage flagThailandWithSize: size];
        case CountriesFlagsTonga: return [UIImage flagTongaWithSize: size];
        case CountriesFlagsUkraine: return [UIImage flagUkraineWithSize: size];
        case CountriesFlagsUnitedArabEmirates: return [UIImage flagUnitedArabEmiratesWithSize: size];
        // The official flag of Wallis and Futuna is the French national flag, as it is a French territory.
        case CountriesFlagsWallisAndFutuna: return [UIImage flagFranceWithSize: size];
        case CountriesFlagsYemen: return [UIImage flagYemenWithSize: size];
            
        default: return nil;
    }
}

@end
