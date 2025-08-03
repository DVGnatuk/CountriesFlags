//
//  UIImage+Jordan.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Jordan "wikipedia"
     
     Generates the flag of Jordan.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Jordan.
     */
    internal static func flagJordan(with size: CGSize) -> UIImage? {
        let colorRed = UIColor(red: 206.0 / 255.0,
                               green: 17.0 / 255.0,
                               blue: 38.0 / 255.0,
                               alpha: 1.0)
        let colorGreen = UIColor(red: 0.0,
                                 green: 122.0 / 255.0,
                                 blue: 61.0 / 255.0,
                                 alpha: 1.0)
        let colorWhite = UIColor.white
        let colorBlack = UIColor.black

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorBlack.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 3.0),
                          size: CGSize(width: size.width, height: size.height / 3.0)))

        colorGreen.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 3.0 * 2.0),
                          size: CGSize(width: size.width, height: size.height / 3.0)))

        colorRed.setFill()
        UIBezierPath.triangle(in: CGSize(width: size.width / 2.0, height: size.height),
                              type: .left).fill()

        colorWhite.setFill()
        UIBezierPath.star(with: CGSize(width: size.width / 84.0 * 12.97871376 * 2.0, height: size.height),
                          radius: size.height / 42.0 * 6.0 / 2.0,
                          type: .sevenPointed).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
