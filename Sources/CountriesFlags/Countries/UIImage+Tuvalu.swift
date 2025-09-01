//
//  UIImage+Tuvalu.swift
//  CountriesFlags
//

// swiftlint:disable function_body_length

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Tuvalu "wikipedia"
     
     Generates the flag of Tuvalu.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Tuvalu.
     */
    internal static func flagTuvalu(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 0.0,
                                green: 156.0 / 255.0,
                                blue: 222.0 / 255.0,
                                alpha: 1.0)
        let colorYellow = UIColor(red: 254.0 / 255.0,
                                  green: 221.0 / 255.0,
                                  blue: 0.0,
                                  alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorYellow.setFill()
        // Nanumea island
        let starRadius = size.height / 100.0 * 8.7
        UIBezierPath.star(with: CGSize(width: size.width / 1000.0 * 1092.0, height: size.height / 100.0 * 180.0),
                          radius: starRadius).fill()
        // Nukufetau island
        UIBezierPath.star(with: CGSize(width: size.width / 1000.0 * 1684.0, height: size.height / 100.0 * 128.3),
                          radius: starRadius).fill()
        // Niulakita island
        UIBezierPath.star(with: CGSize(width: size.width / 1000.0 * 1858.0, height: size.height / 100.0 * 106.5),
                          radius: starRadius).fill()
        // Nukulaelae island
        UIBezierPath.star(with: CGSize(width: size.width / 1000.0 * 1858.0, height: size.height / 100.0 * 26.5),
                          radius: starRadius).fill()
        // Niutao island
        let starSize = CGSize(width: size.width / 1000.0 * 1300.0,
                              height: size.height / 100.0 * 128.5)
        var path = UIBezierPath.star(with: starSize, radius: starRadius)
        path.rotate(to: 36.0, around: CGPoint(x: size.width / 1000.0 * 1300.0 / 2.0,
                                              y: size.height / 100.0 * 128.5 / 2.0))
        path.fill()
        // Nanumanga island
        path = UIBezierPath.star(with: CGSize(width: size.width / 1000.0 * 1300.0, height: size.height / 100.0 * 170.0),
                                 radius: starRadius)
        path.rotate(to: 36.0, around: CGPoint(x: size.width / 1000.0 * 1300.0 / 2.0,
                                              y: size.height / 100.0 * 170.0 / 2.0))
        path.fill()
        // Nui island
        path = UIBezierPath.star(with: CGSize(width: size.width / 1000.0 * 1509.0, height: size.height / 100.0 * 158.5),
                                 radius: starRadius)
        path.rotate(to: 36.0, around: CGPoint(x: size.width / 1000.0 * 1509.0 / 2.0,
                                              y: size.height / 100.0 * 158.5 / 2.0))
        path.fill()
        // Vaitupu island
        path = UIBezierPath.star(with: CGSize(width: size.width / 1000.0 * 1509.0, height: size.height / 100.0 * 71.5),
                                 radius: starRadius)
        path.rotate(to: 36.0, around: CGPoint(x: size.width / 1000.0 * 1509.0 / 2.0,
                                              y: size.height / 100.0 * 71.5 / 2.0))
        path.fill()
        // Funafuti island
        path = UIBezierPath.star(with: CGSize(width: size.width / 1000.0 * 1683.0, height: size.height / 100.0 * 58.6),
                                 radius: starRadius)
        path.rotate(to: 36.0, around: CGPoint(x: size.width / 1000.0 * 1683.0 / 2.0,
                                              y: size.height / 100.0 * 58.6 / 2.0))
        path.fill()

        flagUnitedKingdom(with: CGSize(width: size.width / 2.0, height: size.height / 2.0))?.draw(at: .zero)

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif

// swiftlint:enable function_body_length
