//
//  UIImage+Extension.swift
//  CountriesFlags
//

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
        case .Armenia: return flagArmenia(with: size)
        case .Austria: return flagAustria(with: size)
        case .Bangladesh: return flagBangladesh(with: size)
        case .Belgium: return flagBelgium(with: size)
        case .Benin: return flagBenin(with: size)
        case .Bulgaria: return flagBulgaria(with: size)
        case .Chad: return flagChad(with: size)
        case .Colombia: return flagColombia(with: size)
        case .Estonia: return flagEstonia(with: size)
        case .France: return flagFrance(with: size)
        case .Gabon: return flagGabon(with: size)
        case .Gambia: return flagGambia(with: size)
        case .Germany: return flagGermany(with: size)
        case .Guinea: return flagGuinea(with: size)
        case .Hungary: return flagHungary(with: size)
        case .Indonesia: return flagIndonesia(with: size)
        case .Italy: return flagItaly(with: size)
        case .Japan: return flagJapan(with: size)
        case .Laos: return flagLaos(with: size)
        case .Latvia: return flagLatvia(with: size)
        case .Lithuania: return flagLithuania(with: size)
        case .Luxembourg: return flagLuxembourg(with: size)
        case .Madagascar: return flagMadagascar(with: size)
        case .Mali: return flagMali(with: size)
        case .Mauritius: return flagMauritius(with: size)
        case .Monaco: return flagMonaco(with: size)
        case .Netherlands: return flagNetherlands(with: size)
        case .Niger: return flagNiger(with: size)
        case .Nigeria: return flagNigeria(with: size)
        case .Palau: return flagPalau(with: size)
        case .Poland: return flagPoland(with: size)
        case .RussianFederation: return flagRussianFederation(with: size)
        case .SierraLeone: return flagSierraLeone(with: size)
        case .Ukraine: return flagUkraine(with: size)
        case .Yemen: return flagYemen(with: size)
        }
    }
}

#endif
