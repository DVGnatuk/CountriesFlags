//
//  UIImage+Niger.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Niger "wikipedia"
     
     Generates the flag of Niger.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Niger.
     */
    internal static func flagNiger(with size: CGSize) -> UIImage? {
        let colorOrange = UIColor(red: 224.0/255.0,
                                  green: 82.0/255.0,
                                  blue: 6.0/255.0,
                                  alpha: 1.0)
        let colorWhite = UIColor.white
        let colorGreen = UIColor(red: 13.0/255.0,
                                 green: 176.0/255.0,
                                 blue: 43.0/255.0,
                                 alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorOrange.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 3.0),
                          size: CGSize(width: size.width, height: size.height / 3.0)))

        colorGreen.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 3.0 * 2.0),
                          size: CGSize(width: size.width, height: size.height / 3.0)))

        let radius = size.height * 3.0 / 5.0 * (2.0 / 5.0)
        let path = UIBezierPath(ovalIn: CGRect(x: size.width / 2.0 - radius / 2.0,
                                               y: size.height / 2.0 - radius / 2.0,
                                               width: radius,
                                               height: radius))
        colorOrange.setFill()
        path.fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
