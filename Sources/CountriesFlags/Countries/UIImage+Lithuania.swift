//
//  UIImage+Lithuania.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Lithuania "wikipedia"
     
     Generates the flag of Lithuania.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Lithuania.
     */
    internal static func flagLithuania(with size: CGSize) -> UIImage {
        let colorYellow = UIColor(red: 253.0 / 255.0,
                                  green: 185.0 / 255.0,
                                  blue: 19.0 / 255.0,
                                  alpha: 1.0)
        let colorGreen = UIColor(red: 0.0,
                                 green: 106.0 / 255.0,
                                 blue: 68.0 / 255.0,
                                 alpha: 1.0)
        let colorRed = UIColor(red: 193.0 / 255.0,
                               green: 39.0 / 255.0,
                               blue: 45.0 / 255.0,
                               alpha: 1.0)
        let lineSize = CGSize(width: size.width, height: size.height / 3.0)

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorYellow.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorGreen.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 3.0), size: lineSize))

        colorRed.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 3.0 * 2.0), size: lineSize))

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image ?? UIImage()
    }
}

#endif
