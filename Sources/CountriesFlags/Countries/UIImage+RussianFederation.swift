//
//  UIImage+RussianFederation.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Russia "wikipedia"
     
     Generates the flag of Russian federation.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Russian federation.
     */
    internal static func flagRussianFederation(with size: CGSize) -> UIImage? {
        let colorWhite = UIColor.white
        let colorBlue = UIColor(red: 0.0,
                                green: 50.0 / 255.0,
                                blue: 160.0 / 255.0,
                                alpha: 1.0)
        let colorRed = UIColor(red: 218.0 / 255.0,
                               green: 41.0 / 255.0,
                               blue: 28.0 / 255.0,
                               alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorWhite.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorBlue.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 3.0),
                          size: CGSize(width: size.width, height: size.height / 3.0)))

        colorRed.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 3.0 * 2.0),
                          size: CGSize(width: size.width, height: size.height / 3.0)))

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
