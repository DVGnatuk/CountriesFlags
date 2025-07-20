//
//  UIImage+CostaRica.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Costa_Rica "wikipedia"
     
     Generates the flag of Costa Rica.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Costa Rica.
     */
    internal static func flagCostaRica(with size: CGSize) -> UIImage? {
        let colorRed = UIColor(red: 218.0/255.0,
                               green: 41.0/255.0,
                               blue: 28.0/255.0,
                               alpha: 1.0)
        let colorWhite = UIColor.white
        let colorBlue = UIColor(red: 0.0,
                                green: 20.0/255.0,
                                blue: 137.0/255.0,
                                alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 6.0),
                          size: CGSize(width: size.width, height: size.height / 6.0 * 4.0)))

        colorRed.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 6.0 * 2.0),
                          size: CGSize(width: size.width, height: size.height / 6.0 * 2.0)))

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
