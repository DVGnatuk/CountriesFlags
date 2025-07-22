//
//  UIImage+Extension.m
//  CountriesFlags
//

#import "UIImage+Extension.h"

#import "Countries/UIImage+Armenia.h"
#import "Countries/UIImage+Austria.h"
#import "Countries/UIImage+Bahamas.h"
#import "Countries/UIImage+Bahrain.h"
#import "Countries/UIImage+Bangladesh.h"
#import "Countries/UIImage+Belgium.h"
#import "Countries/UIImage+Benin.h"
#import "Countries/UIImage+Botswana.h"
#import "Countries/UIImage+Bulgaria.h"
#import "Countries/UIImage+BurkinaFaso.h"
#import "Countries/UIImage+Chad.h"
#import "Countries/UIImage+Colombia.h"
#import "Countries/UIImage+CostaRica.h"
#import "Countries/UIImage+CoteDIvoire.h"
#import "Countries/UIImage+CzechRepublic.h"
#import "Countries/UIImage+Denmark.h"
#import "Countries/UIImage+FaroeIslands.h"
#import "Countries/UIImage+Estonia.h"
#import "Countries/UIImage+Finland.h"
#import "Countries/UIImage+France.h"
#import "Countries/UIImage+Greece.h"
#import "Countries/UIImage+Iceland.h"
#import "Countries/UIImage+Ireland.h"
#import "Countries/UIImage+Kuwait.h"
#import "Countries/UIImage+Mali.h"
#import "Countries/UIImage+Martinique.h"
#import "Countries/UIImage+Monaco.h"
#import "Countries/UIImage+Netherlands.h"
#import "Countries/UIImage+Nigeria.h"
#import "Countries/UIImage+Norway.h"
#import "Countries/UIImage+Poland.h"
#import "Countries/UIImage+Qatar.h"
#import "Countries/UIImage+Romania.h"
#import "Countries/UIImage+RussianFederation.h"
#import "Countries/UIImage+Seychelles.h"
#import "Countries/UIImage+SierraLeone.h"
#import "Countries/UIImage+Sweden.h"
#import "Countries/UIImage+Switzerland.h"
#import "Countries/UIImage+Thailand.h"
#import "Countries/UIImage+Tonga.h"
#import "Countries/UIImage+Ukraine.h"
#import "Countries/UIImage+UnitedArabEmirates.h"
#import "Countries/UIImage+Yemen.h"

@implementation UIImage (CountriesFlags)

+ (UIImage * _Nullable)flagForCountry:(CountriesFlags)country size:(CGSize)size {
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
        case CountriesFlagsBurkinaFaso: return [UIImage flagBurkinaFasoWithSize: size];
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
        // The official flag of French Guiana is the French flag due to it being an
        // overseas region and department of France.
        case CountriesFlagsFrenchGuiana: return [UIImage flagFranceWithSize: size];
        // The French tricolore is the official national flag used in Guadeloupe.
        case CountriesFlagsGuadeloupe: return [UIImage flagFranceWithSize: size];
        case CountriesFlagsGreece: return [UIImage flagGreeceWithSize: size];
        case CountriesFlagsIceland: return [UIImage flagIcelandWithSize: size];
        case CountriesFlagsIreland: return [UIImage flagIrelandWithSize: size];
        case CountriesFlagsKuwait: return [UIImage flagKuwaitWithSize: size];
        case CountriesFlagsMali: return [UIImage flagMaliWithSize: size];
        case CountriesFlagsMartinique: return [UIImage flagMartiniqueWithSize: size];
        case CountriesFlagsMonaco: return [UIImage flagMonacoWithSize: size];
        case CountriesFlagsNetherlands: return [UIImage flagNetherlandsWithSize: size];
        case CountriesFlagsNigeria: return [UIImage flagNigeriaWithSize: size];
        case CountriesFlagsNorway: return [UIImage flagNorwayWithSize: size];
        case CountriesFlagsPoland: return [UIImage flagPolandWithSize: size];
        case CountriesFlagsQatar: return [UIImage flagQatarWithSize: size];
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
