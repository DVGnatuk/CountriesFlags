//
//  UIImage+Niue.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Niue "wikipedia"
     
     Generates the flag of Niue.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Niue.
     */
    internal static func flagNiue(with size: CGSize) -> UIImage {
        let colorYellow = UIColor(red: 254.0 / 255.0,
                                  green: 221.0 / 255.0,
                                  blue: 0.0,
                                  alpha: 1.0)
        let colorBlue = UIColor(red: 1.0 / 255.0,
                                green: 33.0 / 255.0,
                                blue: 105.0 / 255.0,
                                alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorYellow.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        flagUnitedKingdom(with: size.halfSize).draw(at: .zero)

        colorBlue.setFill()
        UIBezierPath(arcCenter: CGPoint(x: size.width / 4.0, y: size.height / 4.0),
                     radius: size.height / 30.0 * 2.5,
                     startAngle: 0.0,
                     endAngle: .pi * 2.0,
                     clockwise: true).fill()

        colorYellow.setFill()
        UIBezierPath.star(at: CGPoint(x: size.width / 9.6, y: size.height / 3.91),
                          radius: size.height / 30.0 * 1.5).fill()
        UIBezierPath.star(at: CGPoint(x: size.width / 100.0 * 39.55, y: size.height / 3.91),
                          radius: size.height / 30.0 * 1.5).fill()
        UIBezierPath.star(at: CGPoint(x: size.width / 4.0, y: size.height / 11.45),
                          radius: size.height / 30.0 * 1.5).fill()
        UIBezierPath.star(at: CGPoint(x: size.width / 4.0, y: size.height / 2.37),
                          radius: size.height / 30.0 * 1.5).fill()
        UIBezierPath.star(at: CGPoint(x: size.width / 4.0, y: size.height / 4.0),
                          radius: size.height / 30.0 * 2.5).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image ?? UIImage()
    }
}

#endif
