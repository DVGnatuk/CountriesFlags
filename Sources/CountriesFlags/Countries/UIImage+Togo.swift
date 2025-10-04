//
//  UIImage+Togo.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Togo "wikipedia"
     
     Generates the flag of Togo.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Togo.
     */
    internal static func flagTogo(with size: CGSize) -> UIImage? {
        let colorRed = UIColor(red: 210.0 / 255.0,
                               green: 16.0 / 255.0,
                               blue: 52.0 / 255.0,
                               alpha: 1.0)
        let colorWhite = UIColor.white
        let colorGreen = UIColor(red: 0.0,
                                 green: 106.0 / 255.0,
                                 blue: 74.0 / 255.0,
                                 alpha: 1.0)
        let colorYellow = UIColor(red: 1.0,
                                  green: 206.0 / 255.0,
                                  blue: 0.0,
                                  alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorGreen.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorYellow.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 5.0 * 3.0),
                          size: CGSize(width: size.width, height: size.height / 5.0)))
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 5.0),
                          size: CGSize(width: size.width, height: size.height / 5.0)))

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero,
                          size: CGSize(width: size.height / 5.0 * 3.0, height: size.height / 5.0 * 3.0)))

        colorWhite.setFill()
        UIBezierPath.star(at: CGPoint(x: size.height / 5.0 * 1.5, y: size.height / 5.0 * 1.5),
                          radius: size.height / 6.0).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
