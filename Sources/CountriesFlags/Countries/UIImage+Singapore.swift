//
//  UIImage+Singapore.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Singapore "wikipedia"
     
     Generates the flag of Singapore.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Singapore.
     */
    internal static func flagSingapore(with size: CGSize) -> UIImage? {
        let colorRed = UIColor(red: 238.0 / 255.0,
                               green: 37.0 / 255.0,
                               blue: 54.0 / 255.0,
                               alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorWhite.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: CGSize(width: size.width, height: size.height / 2.0)))

        colorWhite.setFill()
        var starRadius = size.height / 36.0 * 6.625
        UIBezierPath(arcCenter: CGPoint(x: size.width / 54.0 * 11.46, y: size.height / 36.0 * 9.0),
                     radius: starRadius,
                     startAngle: 0.0,
                     endAngle: .pi * 2.0,
                     clockwise: true).fill()

        colorRed.setFill()
        UIBezierPath(arcCenter: CGPoint(x: size.width / 54.0 * 14.44, y: size.height / 36.0 * 9.0),
                     radius: starRadius,
                     startAngle: 0.0,
                     endAngle: .pi * 2.0,
                     clockwise: true).fill()

        colorWhite.setFill()
        starRadius = size.height / 36.0 * 3.45 / 2.0
        // top
        UIBezierPath.star(at: CGPoint(x: size.width / 54.0 * 15.05, y: size.height / 36.0 * 5.2),
                          radius: starRadius).fill()
        // left middle
        UIBezierPath.star(at: CGPoint(x: size.width / 54.0 * 11.4, y: size.height / 36.0 * 7.85),
                          radius: starRadius).fill()
        // right middle
        UIBezierPath.star(at: CGPoint(x: size.width / 54.0 * 18.65, y: size.height / 36.0 * 7.85),
                          radius: starRadius).fill()
        // left bottom
        UIBezierPath.star(at: CGPoint(x: size.width / 54.0 * 12.8, y: size.height / 36.0 * 12.1),
                          radius: starRadius).fill()
        // right bottom
        UIBezierPath.star(at: CGPoint(x: size.width / 54.0 * 17.25, y: size.height / 36.0 * 12.1),
                          radius: starRadius).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
