//
//  UIImage+Tuvalu.swift
//  CountriesFlags
//

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
    internal static func flagTuvalu(with size: CGSize) -> UIImage {
        let colorBlue = UIColor(red: 0.0,
                                green: 156.0 / 255.0,
                                blue: 222.0 / 255.0,
                                alpha: 1.0)
        let colorYellow = UIColor(red: 254.0 / 255.0,
                                  green: 221.0 / 255.0,
                                  blue: 0.0,
                                  alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorYellow.setFill()
        // Nanumea island
        let starRadius = size.height / 100.0 * 8.7
        UIBezierPath.star(at: CGPoint(x: size.width / 1000.0 * 546.0, y: size.height / 100.0 * 90.0),
                          radius: starRadius).fill()
        // Nukufetau island
        UIBezierPath.star(at: CGPoint(x: size.width / 1000.0 * 842.0, y: size.height / 100.0 * 64.15),
                          radius: starRadius).fill()
        // Niulakita island
        UIBezierPath.star(at: CGPoint(x: size.width / 1000.0 * 929.0, y: size.height / 100.0 * 53.25),
                          radius: starRadius).fill()
        // Nukulaelae island
        UIBezierPath.star(at: CGPoint(x: size.width / 1000.0 * 929.0, y: size.height / 100.0 * 13.25),
                          radius: starRadius).fill()
        // Niutao island
        var starCenter = CGPoint(x: size.width / 1000.0 * 650.0,
                                 y: size.height / 100.0 * 64.25)
        var path = UIBezierPath.star(at: starCenter, radius: starRadius)
        path.rotate(to: 36.0, around: starCenter)
        path.fill()
        // Nanumanga island
        starCenter = CGPoint(x: size.width / 1000.0 * 650.0, y: size.height / 100.0 * 85.0)
        path = UIBezierPath.star(at: starCenter, radius: starRadius)
        path.rotate(to: 36.0, around: starCenter)
        path.fill()
        // Nui island
        starCenter = CGPoint(x: size.width / 1000.0 * 754.5, y: size.height / 100.0 * 79.25)
        path = UIBezierPath.star(at: starCenter, radius: starRadius)
        path.rotate(to: 36.0, around: starCenter)
        path.fill()
        // Vaitupu island
        starCenter = CGPoint(x: size.width / 1000.0 * 754.5, y: size.height / 100.0 * 35.75)
        path = UIBezierPath.star(at: starCenter, radius: starRadius)
        path.rotate(to: 36.0, around: starCenter)
        path.fill()
        // Funafuti island
        starCenter = CGPoint(x: size.width / 1000.0 * 841.5, y: size.height / 100.0 * 29.3)
        path = UIBezierPath.star(at: starCenter, radius: starRadius)
        path.rotate(to: 36.0, around: starCenter)
        path.fill()

        flagUnitedKingdom(with: size.halfSize).draw(at: .zero)

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image ?? UIImage()
    }
}

#endif
