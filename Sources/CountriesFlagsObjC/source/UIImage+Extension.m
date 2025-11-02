//
//  UIImage+Extension.m
//  CountriesFlags
//

#import "UIImage+Extension.h"

#import "Countries/UIImage+AlandIslands.h"
#import "Countries/UIImage+Algeria.h"
#import "Countries/UIImage+AntiguaAndBarbuda.h"
#import "Countries/UIImage+Armenia.h"
#import "Countries/UIImage+Aruba.h"
#import "Countries/UIImage+Australia.h"
#import "Countries/UIImage+Austria.h"
#import "Countries/UIImage+Azerbaijan.h"
#import "Countries/UIImage+Bahamas.h"
#import "Countries/UIImage+Bahrain.h"
#import "Countries/UIImage+Bangladesh.h"
#import "Countries/UIImage+Belarus.h"
#import "Countries/UIImage+Belgium.h"
#import "Countries/UIImage+Benin.h"
#import "Countries/UIImage+BosniaAndHerzegovina.h"
#import "Countries/UIImage+Botswana.h"
#import "Countries/UIImage+Bulgaria.h"
#import "Countries/UIImage+BurkinaFaso.h"
#import "Countries/UIImage+Burundi.h"
#import "Countries/UIImage+CapeVerde.h"
#import "Countries/UIImage+CentralAfricanRepublic.h"
#import "Countries/UIImage+Chad.h"
#import "Countries/UIImage+Chile.h"
#import "Countries/UIImage+China.h"
#import "Countries/UIImage+Colombia.h"
#import "Countries/UIImage+Comoros.h"
#import "Countries/UIImage+CookIslands.h"
#import "Countries/UIImage+CostaRica.h"
#import "Countries/UIImage+CoteDIvoire.h"
#import "Countries/UIImage+Cuba.h"
#import "Countries/UIImage+CzechRepublic.h"
#import "Countries/UIImage+DemocraticRepublicCongo.h"
#import "Countries/UIImage+Denmark.h"
#import "Countries/UIImage+Djibouti.h"
#import "Countries/UIImage+FaroeIslands.h"
#import "Countries/UIImage+Estonia.h"
#import "Countries/UIImage+Finland.h"
#import "Countries/UIImage+France.h"
#import "Countries/UIImage+Gabon.h"
#import "Countries/UIImage+Gambia.h"
#import "Countries/UIImage+Germany.h"
#import "Countries/UIImage+Ghana.h"
#import "Countries/UIImage+Greece.h"
#import "Countries/UIImage+Greenland.h"
#import "Countries/UIImage+Guinea.h"
#import "Countries/UIImage+GuineaBissau.h"
#import "Countries/UIImage+Guyana.h"
#import "Countries/UIImage+Honduras.h"
#import "Countries/UIImage+Hungary.h"
#import "Countries/UIImage+Iceland.h"
#import "Countries/UIImage+Indonesia.h"
#import "Countries/UIImage+Ireland.h"
#import "Countries/UIImage+Israel.h"
#import "Countries/UIImage+Italy.h"
#import "Countries/UIImage+Jamaica.h"
#import "Countries/UIImage+Japan.h"
#import "Countries/UIImage+Jordan.h"
#import "Countries/UIImage+Kuwait.h"
#import "Countries/UIImage+Laos.h"
#import "Countries/UIImage+Latvia.h"
#import "Countries/UIImage+Liberia.h"
#import "Countries/UIImage+Libya.h"
#import "Countries/UIImage+Lithuania.h"
#import "Countries/UIImage+Luxembourg.h"
#import "Countries/UIImage+Madagascar.h"
#import "Countries/UIImage+Malaysia.h"
#import "Countries/UIImage+Maldives.h"
#import "Countries/UIImage+Mali.h"
#import "Countries/UIImage+MarshallIslands.h"
#import "Countries/UIImage+Martinique.h"
#import "Countries/UIImage+Mauritania.h"
#import "Countries/UIImage+Mauritius.h"
#import "Countries/UIImage+Micronesia.h"
#import "Countries/UIImage+Monaco.h"
#import "Countries/UIImage+Morocco.h"
#import "Countries/UIImage+Myanmar.h"
#import "Countries/UIImage+Namibia.h"
#import "Countries/UIImage+Nauru.h"
#import "Countries/UIImage+Netherlands.h"
#import "Countries/UIImage+NetherlandsAntilles.h"
#import "Countries/UIImage+NewZealand.h"
#import "Countries/UIImage+Niger.h"
#import "Countries/UIImage+Nigeria.h"
#import "Countries/UIImage+Niue.h"
#import "Countries/UIImage+NorthMacedonia.h"
#import "Countries/UIImage+Norway.h"
#import "Countries/UIImage+Pakistan.h"
#import "Countries/UIImage+Palau.h"
#import "Countries/UIImage+Panama.h"
#import "Countries/UIImage+Poland.h"
#import "Countries/UIImage+PuertoRico.h"
#import "Countries/UIImage+Qatar.h"
#import "Countries/UIImage+RepublicCongo.h"
#import "Countries/UIImage+Romania.h"
#import "Countries/UIImage+RussianFederation.h"
#import "Countries/UIImage+Rwanda.h"
#import "Countries/UIImage+SaintKittsAndNevis.h"
#import "Countries/UIImage+SaintLucia.h"
#import "Countries/UIImage+SaintVincentAndTheGrenadines.h"
#import "Countries/UIImage+Samoa.h"
#import "Countries/UIImage+SaoTomeAndPrincipe.h"
#import "Countries/UIImage+Senegal.h"
#import "Countries/UIImage+Seychelles.h"
#import "Countries/UIImage+SierraLeone.h"
#import "Countries/UIImage+Singapore.h"
#import "Countries/UIImage+Slovakia.h"
#import "Countries/UIImage+SolomonIslands.h"
#import "Countries/UIImage+Somalia.h"
#import "Countries/UIImage+SouthAfrica.h"
#import "Countries/UIImage+SovietUnion.h"
#import "Countries/UIImage+Sudan.h"
#import "Countries/UIImage+Suriname.h"
#import "Countries/UIImage+Sweden.h"
#import "Countries/UIImage+Switzerland.h"
#import "Countries/UIImage+Syria.h"
#import "Countries/UIImage+Taiwan.h"
#import "Countries/UIImage+Tanzania.h"
#import "Countries/UIImage+Thailand.h"
#import "Countries/UIImage+TimorLeste.h"
#import "Countries/UIImage+Togo.h"
#import "Countries/UIImage+Tonga.h"
#import "Countries/UIImage+TrinidadAndTobago.h"
#import "Countries/UIImage+Tunisia.h"
#import "Countries/UIImage+Turkey.h"
#import "Countries/UIImage+Tuvalu.h"
#import "Countries/UIImage+Ukraine.h"
#import "Countries/UIImage+UnitedArabEmirates.h"
#import "Countries/UIImage+UnitedKingdom.h"
#import "Countries/UIImage+UnitedStatesOfAmerica.h"
#import "Countries/UIImage+Uzbekistan.h"
#import "Countries/UIImage+Vietnam.h"
#import "Countries/UIImage+Yemen.h"

@implementation UIImage (CountriesFlags)

+ (UIImage * _Nullable)flagForCountry:(CountriesFlags)country size:(CGSize)size {
    switch (country) {
        case CountriesFlagsAlandIslands: return [UIImage flagAlandIslandsWithSize: size];
        case CountriesFlagsAlgeria: return [UIImage flagAlgeriaWithSize: size];
        case CountriesFlagsAntiguaAndBarbuda: return [UIImage flagAntiguaAndBarbudaWithSize: size];
        case CountriesFlagsArmenia: return [UIImage flagArmeniaWithSize: size];
        case CountriesFlagsAruba: return [UIImage flagArubaWithSize: size];
        case CountriesFlagsAustralia: return [UIImage flagAustraliaWithSize: size];
        case CountriesFlagsAustria: return [UIImage flagAustriaWithSize: size];
        case CountriesFlagsAzerbaijan: return [UIImage flagAzerbaijanWithSize: size];
        case CountriesFlagsBahamas: return [UIImage flagBahamasWithSize: size];
        case CountriesFlagsBahrain: return [UIImage flagBahrainWithSize: size];
        case CountriesFlagsBangladesh: return [UIImage flagBangladeshWithSize: size];
        case CountriesFlagsBelarus: return [UIImage flagBelarusWithSize: size];
        case CountriesFlagsBelgium: return [UIImage flagBelgiumWithSize: size];
        case CountriesFlagsBenin: return [UIImage flagBeninWithSize: size];
        case CountriesFlagsBosniaAndHerzegovina: return [UIImage flagBosniaAndHerzegovinaWithSize: size];
        case CountriesFlagsBotswana: return [UIImage flagBotswanaWithSize: size];
        case CountriesFlagsBulgaria: return [UIImage flagBulgariaWithSize: size];
        case CountriesFlagsBurkinaFaso: return [UIImage flagBurkinaFasoWithSize: size];
        case CountriesFlagsBurundi: return [UIImage flagBurundiWithSize: size];
        case CountriesFlagsCaboVerde: return [UIImage flagCapeVerdeWithSize: size];
        // Cape Verde or Cabo Verde, officially the Republic of Cabo Verde
        case CountriesFlagsCapeVerde: return [UIImage flagCapeVerdeWithSize: size];
        case CountriesFlagsCentralAfricanRepublic: return [UIImage flagCentralAfricanRepublicWithSize: size];
        case CountriesFlagsChad: return [UIImage flagChadWithSize: size];
        case CountriesFlagsChile: return [UIImage flagChileWithSize: size];
        case CountriesFlagsChina: return [UIImage flagChinaWithSize: size];
        case CountriesFlagsColombia: return [UIImage flagColombiaWithSize: size];
        case CountriesFlagsComoros: return [UIImage flagComorosWithSize: size];
        case CountriesFlagsCookIslands: return [UIImage flagCookIslandsWithSize: size];
        case CountriesFlagsCostaRica: return [UIImage flagCostaRicaWithSize: size];
        case CountriesFlagsCoteDIvoire: return [UIImage flagCoteDIvoireWithSize: size];
        case CountriesFlagsCuba: return [UIImage flagCubaWithSize: size];
        case CountriesFlagsCzechRepublic: return [UIImage flagCzechRepublicWithSize: size];
        case CountriesFlagsDemocraticRepublicCongo: return [UIImage flagDemocraticRepublicCongoWithSize: size];
        case CountriesFlagsDenmark: return [UIImage flagDenmarkWithSize: size];
        case CountriesFlagsDjibouti: return [UIImage flagDjiboutiWithSize: size];
        case CountriesFlagsEstonia: return [UIImage flagEstoniaWithSize: size];
        case CountriesFlagsFaroeIslands: return [UIImage flagFaroeIslandsWithSize: size];
        case CountriesFlagsFinland: return [UIImage flagFinlandWithSize: size];
        case CountriesFlagsFrance: return [UIImage flagFranceWithSize: size];
        // The official flag of French Guiana is the French flag due to it being an
        // overseas region and department of France.
        case CountriesFlagsFrenchGuiana: return [UIImage flagFranceWithSize: size];
        // The French tricolore is the official national flag used in Guadeloupe.
        case CountriesFlagsGuadeloupe: return [UIImage flagFranceWithSize: size];
        case CountriesFlagsGabon: return [UIImage flagGabonWithSize: size];
        case CountriesFlagsGambia: return [UIImage flagGambiaWithSize: size];
        case CountriesFlagsGermany: return [UIImage flagGermanyWithSize: size];
        case CountriesFlagsGhana: return [UIImage flagGhanaWithSize: size];
        case CountriesFlagsGreece: return [UIImage flagGreeceWithSize: size];
        case CountriesFlagsGreenland: return [UIImage flagGreenlandWithSize: size];
        case CountriesFlagsGuinea: return [UIImage flagGuineaWithSize: size];
        case CountriesFlagsGuineaBissau: return [UIImage flagGuineaBissauWithSize: size];
        case CountriesFlagsGuyana: return [UIImage flagGuyanaWithSize: size];
        case CountriesFlagsHonduras: return [UIImage flagHondurasWithSize: size];
        case CountriesFlagsHungary: return [UIImage flagHungaryWithSize: size];
        case CountriesFlagsIceland: return [UIImage flagIcelandWithSize: size];
        case CountriesFlagsIndonesia: return [UIImage flagIndonesiaWithSize: size];
        case CountriesFlagsIreland: return [UIImage flagIrelandWithSize: size];
        case CountriesFlagsIsrael: return [UIImage flagIsraelWithSize: size];
        case CountriesFlagsItaly: return [UIImage flagItalyWithSize: size];
        case CountriesFlagsJamaica: return [UIImage flagJamaicaWithSize: size];
        case CountriesFlagsJapan: return [UIImage flagJapanWithSize: size];
        case CountriesFlagsJordan: return [UIImage flagJordanWithSize: size];
        case CountriesFlagsKuwait: return [UIImage flagKuwaitWithSize: size];
        case CountriesFlagsLaos: return [UIImage flagLaosWithSize: size];
        case CountriesFlagsLatvia: return [UIImage flagLatviaWithSize: size];
        case CountriesFlagsLiberia: return [UIImage flagLiberiaWithSize: size];
        case CountriesFlagsLibya: return [UIImage flagLibyaWithSize: size];
        case CountriesFlagsLithuania: return [UIImage flagLithuaniaWithSize: size];
        case CountriesFlagsLuxembourg: return [UIImage flagLuxembourgWithSize: size];
        case CountriesFlagsMadagascar: return [UIImage flagMadagascarWithSize: size];
        case CountriesFlagsMalaysia: return [UIImage flagMalaysiaWithSize: size];
        case CountriesFlagsMaldives: return [UIImage flagMaldivesWithSize: size];
        case CountriesFlagsMali: return [UIImage flagMaliWithSize: size];
        case CountriesFlagsMarshallIslands: return [UIImage flagMarshallIslandsWithSize: size];
        case CountriesFlagsMartinique: return [UIImage flagMartiniqueWithSize: size];
        case CountriesFlagsMauritania: return [UIImage flagMauritaniaWithSize: size];
        case CountriesFlagsMauritius: return [UIImage flagMauritiusWithSize: size];
        case CountriesFlagsMicronesia: return [UIImage flagMicronesiaWithSize: size];
        case CountriesFlagsMonaco: return [UIImage flagMonacoWithSize: size];
        case CountriesFlagsMorocco: return [UIImage flagMoroccoWithSize: size];
        case CountriesFlagsMyanmar: return [UIImage flagMyanmarWithSize: size];
        case CountriesFlagsNamibia: return [UIImage flagNamibiaWithSize: size];
        case CountriesFlagsNauru: return [UIImage flagNauruWithSize: size];
        case CountriesFlagsNetherlands: return [UIImage flagNetherlandsWithSize: size];
        case CountriesFlagsNetherlandsAntilles: return [UIImage flagNetherlandsAntillesWithSize: size];
        case CountriesFlagsNewZealand: return [UIImage flagNewZealandWithSize: size];
        case CountriesFlagsNiger: return [UIImage flagNigerWithSize: size];
        case CountriesFlagsNigeria: return [UIImage flagNigeriaWithSize: size];
        case CountriesFlagsNiue: return [UIImage flagNiueWithSize: size];
        case CountriesFlagsNorthMacedonia: return [UIImage flagNorthMacedoniaWithSize: size];
        case CountriesFlagsNorway: return [UIImage flagNorwayWithSize: size];
        case CountriesFlagsPakistan: return [UIImage flagPakistanWithSize: size];
        case CountriesFlagsPalau: return [UIImage flagPalauWithSize: size];
        case CountriesFlagsPanama: return [UIImage flagPanamaWithSize: size];
        case CountriesFlagsPoland: return [UIImage flagPolandWithSize: size];
        case CountriesFlagsPuertoRico: return [UIImage flagPuertoRicoWithSize: size];
        case CountriesFlagsQatar: return [UIImage flagQatarWithSize: size];
        case CountriesFlagsRepublicCongo: return [UIImage flagRepublicCongoWithSize: size];
        // The region uses the flag of France, the national flag of the country.
        case CountriesFlagsReunion: return [UIImage flagFranceWithSize: size];
        case CountriesFlagsRomania: return [UIImage flagRomaniaWithSize: size];
        case CountriesFlagsRussianFederation: return [UIImage flagRussianFederationWithSize: size];
        case CountriesFlagsRwanda: return [UIImage flagRwandaWithSize: size];
        case CountriesFlagsSaintKittsAndNevis: return [UIImage flagSaintKittsAndNevisWithSize: size];
        case CountriesFlagsSaintLucia: return [UIImage flagSaintLuciaWithSize: size];
        // The French tricolore is the official national flag used in the Collectivity of Saint Martin.
        case CountriesFlagsSaintMartin: return [UIImage flagFranceWithSize: size];
        case CountriesFlagsSaintVincentAndTheGrenadines: return [UIImage flagSaintVincentAndTheGrenadinesWithSize: size];
        case CountriesFlagsSamoa: return [UIImage flagSamoaWithSize: size];
        case CountriesFlagsSaoTomeAndPrincipe: return [UIImage flagSaoTomeAndPrincipeWithSize: size];
        case CountriesFlagsSenegal: return [UIImage flagSenegalWithSize: size];
        case CountriesFlagsSeychelles: return [UIImage flagSeychellesWithSize: size];
        case CountriesFlagsSierraLeone: return [UIImage flagSierraLeoneWithSize: size];
        case CountriesFlagsSingapore: return [UIImage flagSingaporeWithSize: size];
        case CountriesFlagsSlovakia: return [UIImage flagSlovakiaWithSize: size];
        case CountriesFlagsSolomonIslands: return [UIImage flagSolomonIslandsWithSize: size];
        case CountriesFlagsSomalia: return [UIImage flagSomaliaWithSize: size];
        case CountriesFlagsSouthAfrica: return [UIImage flagSouthAfricaWithSize: size];
        case CountriesFlagsSovietUnion: return [UIImage flagSovietUnionWithSize: size];
        case CountriesFlagsSudan: return [UIImage flagSudanWithSize: size];
        case CountriesFlagsSuriname: return [UIImage flagSurinameWithSize: size];
        case CountriesFlagsSweden: return [UIImage flagSwedenWithSize: size];
        case CountriesFlagsSwitzerland: return [UIImage flagSwitzerlandWithSize: size];
        case CountriesFlagsSyrianArabRepublic: return [UIImage flagSyrianArabRepublicWithSize: size];
        case CountriesFlagsTaiwan: return [UIImage flagTaiwanWithSize: size];
        case CountriesFlagsTanzania: return [UIImage flagTanzaniaWithSize: size];
        case CountriesFlagsThailand: return [UIImage flagThailandWithSize: size];
        case CountriesFlagsTimorLeste: return [UIImage flagTimorLesteWithSize: size];
        case CountriesFlagsTogo: return [UIImage flagTogoWithSize: size];
        case CountriesFlagsTonga: return [UIImage flagTongaWithSize: size];
        case CountriesFlagsTrinidadAndTobago: return [UIImage flagTrinidadAndTobagoWithSize: size];
        case CountriesFlagsTunisia: return [UIImage flagTunisiaWithSize: size];
        case CountriesFlagsTurkey: return [UIImage flagTurkeyWithSize: size];
        case CountriesFlagsTuvalu: return [UIImage flagTuvaluWithSize: size];
        case CountriesFlagsUkraine: return [UIImage flagUkraineWithSize: size];
        case CountriesFlagsUnitedArabEmirates: return [UIImage flagUnitedArabEmiratesWithSize: size];
        case CountriesFlagsUnitedKingdom: return [UIImage flagUnitedKingdomWithSize: size];
        case CountriesFlagsUnitedStatesOfAmerica: return [UIImage flagUnitedStatesOfAmericaWithSize: size];
        // The official flag of Wallis and Futuna is the French national flag, as it is a French territory.
        case CountriesFlagsWallisAndFutuna: return [UIImage flagFranceWithSize: size];
        case CountriesFlagsUzbekistan: return [UIImage flagUzbekistanWithSize: size];
        case CountriesFlagsVietnam: return [UIImage flagVietnamWithSize: size];
        case CountriesFlagsYemen: return [UIImage flagYemenWithSize: size];
            
        default: return nil;
    }
}

@end
