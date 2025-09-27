//
//  UIImage+Somalia.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Somalia "wikipedia"
     
     Generates the flag of Somalia.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Somalia.
     */
    internal static func flagSomalia(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 65.0 / 255.0,
                                green: 143.0 / 255.0,
                                blue: 222.0 / 255.0,
                                alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        UIBezierPath.star(at: size.midPoint, radius: size.height / 4.0).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
