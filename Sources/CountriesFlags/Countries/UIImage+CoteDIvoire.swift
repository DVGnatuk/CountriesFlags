//
//  UIImage+CoteDIvoire.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Ivory_Coast "wikipedia"
     
     Generates the flag of Côte d'Ivoire.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Côte d'Ivoire.
     */
    internal static func flagCoteDIvoire(with size: CGSize) -> UIImage? {
        let colorOrange = UIColor(red: 255.0/255.0,
                                  green: 130.0/255.0,
                                  blue: 0.0,
                                  alpha: 1.0)
        let colorWhite = UIColor.white
        let colorGreen = UIColor(red: 0.0,
                                 green: 154.0/255.0,
                                 blue: 68.0/255.0,
                                 alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorOrange.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 3.0, y: 0.0),
                          size: CGSize(width: size.width / 3.0, height: size.height)))

        colorGreen.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 3.0 * 2.0, y: 0.0),
                          size: CGSize(width: size.width / 3.0, height: size.height)))

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
