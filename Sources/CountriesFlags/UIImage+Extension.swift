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
        case .Germany: return flagGermany(with: size)
        case .Hungary: return flagHungary(with: size)
        case .Indonesia: return flagIndonesia(with: size)
        case .RussianFederation: return flagRussianFederation(with: size)
        case .Ukraine: return flagUkraine(with: size)
        }
    }
}
#endif
