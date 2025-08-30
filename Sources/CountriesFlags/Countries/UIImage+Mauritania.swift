//
//  UIImage+Mauritania.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Mauritania "wikipedia"
     
     Generates the flag of Mauritania.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Mauritania.
     */
    internal static func flagMauritania(with size: CGSize) -> UIImage? {
        let colorRed = UIColor(red: 208.0 / 255.0,
                               green: 28.0 / 255.0,
                               blue: 31.0 / 255.0,
                               alpha: 1.0)
        let colorYellow = UIColor(red: 1.0,
                                  green: 215.0 / 255.0,
                                  blue: 0.0,
                                  alpha: 1.0)
        let colorGreen = UIColor(red: 0.0,
                                 green: 169.0 / 255.0,
                                 blue: 92.0 / 255.0,
                                 alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorGreen.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorYellow.setFill()
        UIBezierPath(arcCenter: CGPoint(x: size.width / 2.0, y: size.height / 1000.0 * 325.0),
                     radius: size.height / 1000.0 * 750.0 / 2.0,
                     startAngle: 0.0,
                     endAngle: .pi * 2.0,
                     clockwise: true).fill()

        colorGreen.setFill()
        UIBezierPath(arcCenter: CGPoint(x: size.width / 2.0, y: size.height / 1000.0 * 200.0),
                     radius: size.height / 1000.0 * 800.0 / 2.0,
                     startAngle: 0.0,
                     endAngle: .pi * 2.0,
                     clockwise: true).fill()

        colorYellow.setFill()
        UIBezierPath.star(with: CGSize(width: size.width, height: size.height / 1000.0 * 812.0),
                          radius: size.height / 1000.0 * 210.0 / 2.0).fill()

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: CGSize(width: size.width, height: size.height / 1000.0 * 200.0)))
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 1000.0 * 800.0),
                          size: CGSize(width: size.width, height: size.height / 1000.0 * 200.0)))

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
