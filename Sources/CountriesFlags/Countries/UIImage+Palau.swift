//
//  UIImage+Palau.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Palau "wikipedia"
     
     Generates the flag of Palau.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Palau.
     */
    internal static func flagPalau(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 0.0,
                                green: 133.0 / 255.0,
                                blue: 202.0 / 255.0,
                                alpha: 1.0)
        let colorYellow = UIColor(red: 1.0,
                                  green: 209.0 / 255.0,
                                  blue: 0.0,
                                  alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        let radius = size.height * 3.0 / 5.0
        let path = UIBezierPath(ovalIn: CGRect(x: size.width * 7.0 / 16.0 - radius / 2.0,
                                               y: size.height / 2.0 - radius / 2.0,
                                               width: radius,
                                               height: radius))
        colorYellow.setFill()
        path.fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
