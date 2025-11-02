//
//  UIImage+Greenland.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Greenland "wikipedia"
     
     Generates the flag of Greenland.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Greenland.
     */
    internal static func flagGreenland(with size: CGSize) -> UIImage? {
        let colorRed = UIColor(red: 208.0 / 255.0,
                               green: 12.0 / 255.0,
                               blue: 51.0 / 255.0,
                               alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorWhite.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorRed.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 2.0),
                          size: CGSize(width: size.width, height: size.height / 2.0)))
        let radius = size.height / 12.0 * 4.0
        let center = CGPoint(x: size.width / 18.0 * 7.0, y: size.height / 2.0)
        UIBezierPath(arcCenter: center, radius: radius, startAngle: 0.0, endAngle: .pi, clockwise: false).fill()

        colorWhite.setFill()
        UIBezierPath(arcCenter: center, radius: radius, startAngle: 0.0, endAngle: .pi, clockwise: true).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
