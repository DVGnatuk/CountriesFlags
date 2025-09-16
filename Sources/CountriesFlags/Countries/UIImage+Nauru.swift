//
//  UIImage+Nauru.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Nauru "wikipedia"
     
     Generates the flag of Nauru.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Nauru.
     */
    internal static func flagNauru(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 1.0 / 255.0,
                                green: 33.0 / 255.0,
                                blue: 105.0 / 255.0,
                                alpha: 1.0)
        let colorYellow = UIColor(red: 1.0,
                                  green: 199.0 / 255.0,
                                  blue: 44.0 / 255.0,
                                  alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorYellow.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 24.0 * 11.0),
                          size: CGSize(width: size.width, height: size.height / 24.0 * 2.0)))

        colorWhite.setFill()
        let starRadius = size.height / 24.0 * 8.0 / 2.0
        UIBezierPath.star(at: CGPoint(x: size.width / 48.0 * 12.0, y: size.height / 24.0 * 17.0),
                          radius: starRadius,
                          type: .twelvePointed(innerRadius: starRadius / 2.0)).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
