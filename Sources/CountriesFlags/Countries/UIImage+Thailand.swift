//
//  UIImage+Thailand.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Thailand "wikipedia"
     
     Generates the flag of Thailand.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Thailand.
     */
    internal static func flagThailand(with size: CGSize) -> UIImage {
        let colorRed = UIColor(red: 165.0 / 255.0,
                               green: 25.0 / 255.0,
                               blue: 49.0 / 255.0,
                               alpha: 1.0)
        let colorWhite = UIColor(red: 244.0 / 255.0,
                                 green: 245.0 / 255.0,
                                 blue: 248.0 / 255.0,
                                 alpha: 1.0)
        let colorBlue = UIColor(red: 45.0 / 255.0,
                                green: 42.0 / 255.0,
                                blue: 74.0 / 255.0,
                                alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 6.0),
                          size: CGSize(width: size.width, height: size.height / 6.0 * 4.0)))

        colorBlue.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 6.0 * 2.0),
                          size: CGSize(width: size.width, height: size.height / 6.0 * 2.0)))

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image ?? UIImage()
    }
}

#endif
