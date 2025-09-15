//
//  UIImage+NewZealand.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_New_Zealand "wikipedia"
     
     Generates the flag of New Zealand.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of New Zealand.
     */
    internal static func flagNewZealand(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 1.0 / 255.0,
                                green: 33.0 / 255.0,
                                blue: 105.0 / 255.0,
                                alpha: 1.0)
        let colorRed = UIColor(red: 200.0 / 255.0,
                               green: 16.0 / 255.0,
                               blue: 46.0 / 255.0,
                               alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        // TODO: rework star() func and use stroke
        // Top star
        colorWhite.setFill()
        var path = UIBezierPath.star(at: CGPoint(x: size.width / 120.0 * 90.0, y: size.height / 60.0 * 12.0),
                                     radius: size.height / 60.0 * 9.54484132 / 2.0)
        path.fill()

        colorRed.setFill()
        path = UIBezierPath.star(at: CGPoint(x: size.width / 120.0 * 90.0, y: size.height / 60.0 * 12.0),
                                 radius: size.height / 60.0 * 6.4 / 2.0)
        path.fill()

        // Left star
        colorWhite.setFill()
        path = UIBezierPath.star(at: CGPoint(x: size.width / 120.0 * 76.15, y: size.height / 60.0 * 26.0),
                                 radius: size.height / 60.0 * 9.54484132 / 2.0)
        path.fill()

        colorRed.setFill()
        path = UIBezierPath.star(at: CGPoint(x: size.width / 120.0 * 76.15, y: size.height / 60.0 * 26.0),
                                 radius: size.height / 60.0 * 6.4 / 2.0)
        path.fill()

        // Right star
        colorWhite.setFill()
        path = UIBezierPath.star(at: CGPoint(x: size.width / 120.0 * 101.85, y: size.height / 60.0 * 22.3),
                                 radius: size.height / 60.0 * 8.49337910 / 2.0)
        path.fill()

        colorRed.setFill()
        path = UIBezierPath.star(at: CGPoint(x: size.width / 120.0 * 101.85, y: size.height / 60.0 * 22.3),
                                 radius: size.height / 60.0 * 5.2 / 2.0)
        path.fill()

        // Bottom star
        colorWhite.setFill()
        path = UIBezierPath.star(at: CGPoint(x: size.width / 120.0 * 90.0, y: size.height / 60.0 * 48.0),
                                 radius: size.height / 60.0 * 10.59630355 / 2.0)
        path.fill()

        colorRed.setFill()
        path = UIBezierPath.star(at: CGPoint(x: size.width / 120.0 * 90.0, y: size.height / 60.0 * 48.0),
                                 radius: size.height / 60.0 * 7.45 / 2.0)
        path.fill()

        flagUnitedKingdom(with: size.halfSize)?.draw(at: .zero)

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
