//
//  UIImage+Greece.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Greece "wikipedia"
     
     Generates the flag of Greece.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Greece.
     */
    internal static func flagGreece(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 13.0 / 255.0,
                                green: 94.0 / 255.0,
                                blue: 175.0 / 255.0,
                                alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        for index in stride(from: 2, through: 14, by: 4) {
            UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 18.0 * CGFloat(index)),
                              size: CGSize(width: size.width, height: size.height / 18.0 * 2.0)))
        }

        colorBlue.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: 0.0),
                          size: CGSize(width: size.width / 27.0 * 10.0, height: size.height / 18.0 * 10.0)))

        colorWhite.setFill()
        // horizontal line
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 18.0 * 4.0),
                          size: CGSize(width: size.width / 27.0 * 10.0, height: size.height / 18.0 * 2.0)))
        // vertical line - add 0.5 to remove blue line for small images
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 27.0 * 4.0, y: 0.0),
                          size: CGSize(width: size.width / 27.0 * 2.0, height: size.height / 18.0 * 10.5)))

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
