//
//  UIImage+Gabon.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Gabon"wikipedia"
     
     Generates the flag of Gabon.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Gabon.
     */
    internal static func flagGabon(with size: CGSize) -> UIImage? {
        let colorGreen = UIColor(red: 0.0,
                                 green: 158.0/255.0,
                                 blue: 96.0/255.0,
                                 alpha: 1.0)
        let colorYellow = UIColor(red: 252.0/255.0,
                                  green: 209.0/255.0,
                                  blue: 22.0/255.0,
                                  alpha: 1.0)
        let colorBlue = UIColor(red: 70.0/255.0,
                                green: 100.0/255.0,
                                blue: 178.0/255.0,
                                alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorGreen.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorYellow.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 3.0),
                          size: CGSize(width: size.width, height: size.height / 3.0)))

        colorBlue.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 3.0 * 2.0),
                          size: CGSize(width: size.width, height: size.height / 3.0)))

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
