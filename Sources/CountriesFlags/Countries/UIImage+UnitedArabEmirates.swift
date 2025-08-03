//
//  UIImage+UnitedArabEmirates.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_the_United_Arab_Emirates"wikipedia"
     
     Generates the flag of UnitedArabEmirates.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of UnitedArabEmirates.
     */
    internal static func flagUnitedArabEmirates(with size: CGSize) -> UIImage? {
        let colorGreen = UIColor(red: 0.0,
                                 green: 115.0 / 255.0,
                                 blue: 47.0 / 255.0,
                                 alpha: 1.0)
        let colorRed = UIColor(red: 200.0 / 255.0,
                               green: 16.0 / 255.0,
                               blue: 46.0 / 255.0,
                               alpha: 1.0)
        let colorWhite = UIColor.white
        let colorBlack = UIColor.black

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorGreen.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height * 2.0 / 6.0),
                          size: CGSize(width: size.width, height: size.height * 2.0 / 6.0)))

        colorBlack.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height * 4.0 / 6.0),
                          size: CGSize(width: size.width, height: size.height * 2.0 / 6.0)))

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero,
                          size: CGSize(width: size.width * 3.0 / 12.0, height: size.height)))

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
