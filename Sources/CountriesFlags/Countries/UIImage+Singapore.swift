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

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorWhite.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: CGSize(width: size.width, height: size.height / 2.0)))

        colorWhite.setFill()
        UIBezierPath(arcCenter: CGPoint(x: size.width / 54.0 * 11.46, y: size.height / 36.0 * 9.0),
                     radius: size.height / 36.0 * 13.25 / 2.0,
                     startAngle: 0.0,
                     endAngle: .pi * 2.0,
                     clockwise: true).fill()

        colorRed.setFill()
        UIBezierPath(arcCenter: CGPoint(x: size.width / 54.0 * 14.44, y: size.height / 36.0 * 9.0),
                     radius: size.height / 36.0 * 13.25 / 2.0,
                     startAngle: 0.0,
                     endAngle: .pi * 2.0,
                     clockwise: true).fill()

        colorWhite.setFill()
        // top
        UIBezierPath.star(with: CGSize(width: size.width / 54.0 * 30.1, height: size.height / 36.0 * 10.4),
                          radius: size.height / 36.0 * 3.45 / 2.0).fill()
        // left middle
        UIBezierPath.star(with: CGSize(width: size.width / 54.0 * 22.8, height: size.height / 36.0 * 15.7),
                          radius: size.height / 36.0 * 3.45 / 2.0).fill()
        // right middle
        UIBezierPath.star(with: CGSize(width: size.width / 54.0 * 37.3, height: size.height / 36.0 * 15.7),
                          radius: size.height / 36.0 * 3.45 / 2.0).fill()
        // left bottom
        UIBezierPath.star(with: CGSize(width: size.width / 54.0 * 25.6, height: size.height / 36.0 * 24.2),
                          radius: size.height / 36.0 * 3.45 / 2.0).fill()
        // right bottom
        UIBezierPath.star(with: CGSize(width: size.width / 54.0 * 34.5, height: size.height / 36.0 * 24.2),
                          radius: size.height / 36.0 * 3.45 / 2.0).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
