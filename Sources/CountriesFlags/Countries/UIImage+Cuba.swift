//
//  UIImage+Cuba.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Cuba "wikipedia"
     
     Generates the flag of Cuba.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Cuba.
     */
    internal static func flagCuba(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 0.0,
                                green: 37.0 / 255.0,
                                blue: 144.0 / 255.0,
                                alpha: 1.0)
        let colorWhite = UIColor.white
        let colorRed = UIColor(red: 204.0 / 255.0,
                               green: 13.0 / 255.0,
                               blue: 13.0 / 255.0,
                               alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 15.0 * 3.0),
                          size: CGSize(width: size.width, height: size.height / 15.0 * 3.0)))
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 15.0 * 9.0),
                          size: CGSize(width: size.width, height: size.height / 15.0 * 3.0)))

        colorRed.setFill()
        UIBezierPath.triangle(in: size, type: .leftEquilateral).fill()

        colorWhite.setFill()
        // TODO: calc right pos inside triangle
        UIBezierPath.star(with: CGSize(width: size.width / 30.0 * 9.0, height: size.height),
                          radius: size.height / 15.0 * 5.0 / 2.0).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
