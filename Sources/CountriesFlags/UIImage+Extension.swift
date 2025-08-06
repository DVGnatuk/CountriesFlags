//
//  UIImage+Extension.swift
//  CountriesFlags
//

// swiftlint:disable cyclomatic_complexity
// swiftlint:disable function_body_length

//#if canImport(SwiftUI)
//
//import SwiftUI
//
//@available(iOS 13.0, *)
//extension Image {
//    static func flag(for country: CountriesFlags, with size: CGSize) -> Image? {
//        switch country {
//        case .RussianFederation: return flagRussianFederation(with: size)
//        case .Ukraine: return flagUkraine(with: size)
//        }
//    }
//}

//#endif

#if canImport(UIKit)

import UIKit

extension UIImage {
    public static func flag(for country: CountriesFlags, with size: CGSize) -> UIImage? {
        switch country {
        case .AlandIslands: return flagAlandIslands(with: size)
        case .AntiguaAndBarbuda: return flagAntiguaAndBarbuda(with: size)
        case .Armenia: return flagArmenia(with: size)
        case .Aruba: return flagAruba(with: size)
        case .Austria: return flagAustria(with: size)
        case .Bahamas: return flagBahamas(with: size)
        case .Bahrain: return flagBahrain(with: size)
        case .Bangladesh: return flagBangladesh(with: size)
        case .Belgium: return flagBelgium(with: size)
        case .Benin: return flagBenin(with: size)
        case .BosniaAndHerzegovina: return flagBosniaAndHerzegovina(with: size)
        case .Botswana: return flagBotswana(with: size)
        case .Bulgaria: return flagBulgaria(with: size)
        case .BurkinaFaso: return flagBurkinaFaso(with: size)
        case .CentralAfricanRepublic: return flagCentralAfricanRepublic(with: size)
        case .Chad: return flagChad(with: size)
        case .Chile: return flagChile(with: size)
        case .Colombia: return flagColombia(with: size)
        case .CostaRica: return flagCostaRica(with: size)
        case .CoteDIvoire: return flagCoteDIvoire(with: size)
        case .Cuba: return flagCuba(with: size)
        case .CzechRepublic: return flagCzechRepublic(with: size)
        case .DemocraticRepublicCongo: return flagDemocraticRepublicCongo(with: size)
        case .Denmark: return flagDenmark(with: size)
        case .Djibouti: return flagDjibouti(with: size)
        case .Estonia: return flagEstonia(with: size)
        case .FaroeIslands: return flagFaroeIslands(with: size)
        case .Finland: return flagFinland(with: size)
        case .France: return flagFrance(with: size)
        // The official flag of French Guiana is the French flag due to it being an
        // overseas region and department of France.
        case .FrenchGuiana: return flagFrance(with: size)
        case .Gabon: return flagGabon(with: size)
        case .Gambia: return flagGambia(with: size)
        case .Germany: return flagGermany(with: size)
        case .Ghana: return flagGhana(with: size)
        case .Greece: return flagGreece(with: size)
        case .Greenland: return flagGreenland(with: size)
        // The French tricolore is the official national flag used in Guadeloupe.
        case .Guadeloupe: return flagFrance(with: size)
        case .Guinea: return flagGuinea(with: size)
        case .GuineaBissau: return flagGuineaBissau(with: size)
        case .Honduras: return flagHonduras(with: size)
        case .Hungary: return flagHungary(with: size)
        case .Iceland: return flagIceland(with: size)
        case .Indonesia: return flagIndonesia(with: size)
        case .Ireland: return flagIreland(with: size)
        case .Italy: return flagItaly(with: size)
        case .Jamaica: return flagJamaica(with: size)
        case .Japan: return flagJapan(with: size)
        case .Jordan: return flagJordan(with: size)
        case .Kuwait: return flagKuwait(with: size)
        case .Laos: return flagLaos(with: size)
        case .Latvia: return flagLatvia(with: size)
        case .Liberia: return flagLiberia(with: size)
        case .Lithuania: return flagLithuania(with: size)
        case .Luxembourg: return flagLuxembourg(with: size)
        case .Madagascar: return flagMadagascar(with: size)
        case .Maldives: return flagMaldives(with: size)
        case .Mali: return flagMali(with: size)
        case .Martinique: return flagMartinique(with: size)
        case .Mauritius: return flagMauritius(with: size)
        case .Micronesia: return flagMicronesia(with: size)
        case .Monaco: return flagMonaco(with: size)
        case .Nauru: return flagNauru(with: size)
        case .Netherlands: return flagNetherlands(with: size)
        case .Niger: return flagNiger(with: size)
        case .Nigeria: return flagNigeria(with: size)
        case .Norway: return flagNorway(with: size)
        case .Palau: return flagPalau(with: size)
        case .Panama: return flagPanama(with: size)
        case .Poland: return flagPoland(with: size)
        case .PuertoRico: return flagPuertoRico(with: size)
        case .Qatar: return flagQatar(with: size)
        case .RepublicCongo: return flagRepublicCongo(with: size)
        case .Samoa: return flagSamoa(with: size)
        case .Romania: return flagRomania(with: size)
        case .RussianFederation: return flagRussianFederation(with: size)
        case .SaoTomeAndPrincipe: return flagSaoTomeAndPrincipe(with: size)
        case .Senegal: return flagSenegal(with: size)
        case .Seychelles: return flagSeychelles(with: size)
        case .SierraLeone: return flagSierraLeone(with: size)
        case .Somalia: return flagSomalia(with: size)
        case .Sudan: return flagSudan(with: size)
        case .Suriname: return flagSuriname(with: size)
        case .Sweden: return flagSweden(with: size)
        case .Switzerland: return flagSwitzerland(with: size)
        case .SyrianArabRepublic: return flagSyrianArabRepublic(with: size)
        case .Tanzania: return flagTanzania(with: size)
        case .Thailand: return flagThailand(with: size)
        case .TimorLeste: return flagTimorLeste(with: size)
        case .Togo: return flagTogo(with: size)
        case .Tonga: return flagTonga(with: size)
        case .TrinidadAndTobago: return flagTrinidadAndTobago(with: size)
        case .Ukraine: return flagUkraine(with: size)
        case .UnitedArabEmirates: return flagUnitedArabEmirates(with: size)
        case .Vietnam: return flagVietnam(with: size)
        // The official flag of Wallis and Futuna is the French national flag, as it is a French territory.
        case .WallisAndFutuna: return flagFrance(with: size)
        case .Yemen: return flagYemen(with: size)
        }
    }
}

#endif

// swiftlint:enable cyclomatic_complexity
// swiftlint:enable function_body_length
