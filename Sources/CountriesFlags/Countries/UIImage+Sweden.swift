//
//  UIImage+Sweden.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Sweden "wikipedia"
     
     Generates the flag of Sweden.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Sweden.
     */
    internal static func flagSweden(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 0.0,
                                green: 106.0 / 255.0,
                                blue: 167.0 / 255.0,
                                alpha: 1.0)
        let colorYellow = UIColor(red: 254.0 / 255.0,
                                  green: 204.0 / 255.0,
                                  blue: 2.0 / 255.0,
                                  alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorYellow.setFill()
        // horizontal line
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 10.0 * 4.0),
                          size: CGSize(width: size.width, height: size.height / 10.0 * 2.0)))
        // vertical line
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 16.0 * 5.0, y: 0.0),
                          size: CGSize(width: size.width / 16.0 * 2.0, height: size.height)))

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
