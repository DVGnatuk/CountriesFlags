//
//  UIImage+Mauritius.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Mauritius "wikipedia"
     
     Generates the flag of Mauritius.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Mauritius.
     */
    internal static func flagMauritius(with size: CGSize) -> UIImage? {
        let colorRed = UIColor(red: 235.0 / 255.0,
                               green: 36.0 / 255.0,
                               blue: 54.0 / 255.0,
                               alpha: 1.0)
        let colorBlue = UIColor(red: 19.0 / 255.0,
                                green: 26.0 / 255.0,
                                blue: 109.0 / 255.0,
                                alpha: 1.0)
        let colorYellow = UIColor(red: 1.0,
                                  green: 214.0 / 255.0,
                                  blue: 0.0,
                                  alpha: 1.0)
        let colorGreen = UIColor(red: 0.0,
                                 green: 166.0 / 255.0,
                                 blue: 80.0 / 255.0,
                                 alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorBlue.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 4.0),
                          size: CGSize(width: size.width, height: size.height / 4.0 * 3.0)))

        colorYellow.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 4.0 * 2.0),
                          size: CGSize(width: size.width, height: size.height / 4.0 * 2.0)))

        colorGreen.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 4.0 * 3.0),
                          size: CGSize(width: size.width, height: size.height / 4.0)))

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
