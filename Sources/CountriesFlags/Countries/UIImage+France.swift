//
//  UIImage+France.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_France "wikipedia"
     
     Generates the flag of France.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of France.
     */
    internal static func flagFrance(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 0.0,
                                green: 0.0,
                                blue: 145.0 / 255.0,
                                alpha: 1.0)
        let colorWhite = UIColor.white
        let colorRed = UIColor(red: 225.0 / 255.0,
                               green: 0.0,
                               blue: 15.0 / 255.0,
                               alpha: 1.0)
        let lineSize = CGSize(width: size.width / 3.0, height: size.height)

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 3.0, y: 0.0), size: lineSize))

        colorRed.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 3.0 * 2.0, y: 0.0), size: lineSize))

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
