//
//  UIImage+SaoTomeAndPrincipe.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_São_Tomé_and_Príncipe "wikipedia"
     
     Generates the flag of São Tomé and Príncipe.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of São Tomé and Príncipe.
     */
    internal static func flagSaoTomeAndPrincipe(with size: CGSize) -> UIImage? {
        let colorGreen = UIColor(red: 0.0,
                                 green: 151.0 / 255.0,
                                 blue: 57.0 / 255.0,
                                 alpha: 1.0)
        let colorYellow = UIColor(red: 1.0,
                                  green: 209.0 / 255.0,
                                  blue: 0.0,
                                  alpha: 1.0)
        let colorBlack = UIColor.black
        let colorRed = UIColor(red: 239.0 / 255.0,
                               green: 51.0 / 255.0,
                               blue: 64.0 / 255.0,
                               alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorGreen.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorYellow.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 84.0 * 24.0),
                          size: CGSize(width: size.width, height: size.height / 84.0 * 36.0)))

        colorRed.setFill()
        UIBezierPath.triangle(in: CGSize(width: size.width / 168.0 * 42.0, height: size.height),
                              type: .left).fill()

        colorBlack.setFill()
        var starSize = CGSize(width: size.width, height: size.height + size.height / 84.0 * 1.37244652 * 2.0)
        UIBezierPath.star(with: starSize,
                          radius: size.height / 84.0 * 28.74489303 / 2.0).fill()
        starSize = CGSize(width: size.width * 1.5, height: size.height + size.height / 84.0 * 1.37244652 * 2.0)
        UIBezierPath.star(with: starSize,
                          radius: size.height / 84.0 * 28.74489303 / 2.0).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
