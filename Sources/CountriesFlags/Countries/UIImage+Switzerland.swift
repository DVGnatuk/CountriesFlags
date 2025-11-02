//
//  UIImage+Switzerland.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Switzerland "wikipedia"
     
     Generates the flag of Switzerland.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Switzerland.
     */
    internal static func flagSwitzerland(with size: CGSize) -> UIImage? {
        let colorRed = UIColor.red
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        // horizontal line
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 32.0 * 6.0, y: size.height / 32.0 * 13.0),
                          size: CGSize(width: size.width / 32.0 * 20.0, height: size.height / 32.0 * 6.0)))
        // vertical line
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 32.0 * 13.0, y: size.height / 32.0 * 6.0),
                          size: CGSize(width: size.width / 32.0 * 6.0, height: size.height / 32.0 * 20.0)))

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
