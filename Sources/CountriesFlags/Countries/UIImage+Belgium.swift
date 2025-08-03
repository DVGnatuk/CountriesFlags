//
//  UIImage+Belgium.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Belgium "wikipedia"
     
     Generates the flag of Belgium.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Belgium.
     */
    internal static func flagBelgium(with size: CGSize) -> UIImage? {
        let colorBlack = UIColor.black
        let colorRed = UIColor(red: 239.0 / 255.0,
                               green: 51.0 / 255.0,
                               blue: 64.0 / 255.0,
                               alpha: 1.0)
        let colorYellow = UIColor(red: 253.0 / 255.0,
                                  green: 218.0 / 255.0,
                                  blue: 36.0 / 255.0,
                                  alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorBlack.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorYellow.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 3.0, y: 0.0),
                          size: CGSize(width: size.width / 3.0, height: size.height)))

        colorRed.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 3.0 * 2.0, y: 0.0),
                          size: CGSize(width: size.width / 3.0, height: size.height)))

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
