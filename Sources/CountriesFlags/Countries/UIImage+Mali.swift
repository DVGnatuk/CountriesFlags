//
//  UIImage+Mali.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Mali "wikipedia"
     
     Generates the flag of Mali.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Mali.
     */
    internal static func flagMali(with size: CGSize) -> UIImage {
        let colorGreen = UIColor(red: 20.0 / 255.0,
                                 green: 181.0 / 255.0,
                                 blue: 58.0 / 255.0,
                                 alpha: 1.0)
        let colorYellow = UIColor(red: 252.0 / 255.0,
                                  green: 209.0 / 255.0,
                                  blue: 22.0 / 255.0,
                                  alpha: 1.0)
        let colorRed = UIColor(red: 206.0 / 255.0,
                               green: 17.0 / 255.0,
                               blue: 38.0 / 255.0,
                               alpha: 1.0)
        let lineSize = CGSize(width: size.width / 3.0, height: size.height)

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorGreen.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorYellow.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 3.0, y: 0.0), size: lineSize))

        colorRed.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 3.0 * 2.0, y: 0.0), size: lineSize))

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image ?? UIImage()
    }
}

#endif
