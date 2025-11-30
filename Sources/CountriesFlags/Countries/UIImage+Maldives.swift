//
//  UIImage+Maldives.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_the_Maldives "wikipedia"
     
     Generates the flag of the Republic of Maldives.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of the Republic of Maldives.
     */
    internal static func flagMaldives(with size: CGSize) -> UIImage {
        let colorRed = UIColor(red: 200.0 / 255.0,
                               green: 16.0 / 255.0,
                               blue: 46.0 / 255.0,
                               alpha: 1.0)
        let colorGreen = UIColor(red: 0.0,
                                 green: 132.0 / 255.0,
                                 blue: 61.0 / 255.0,
                                 alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorGreen.setFill()
        let greenRect = CGRect(origin: CGPoint(x: size.width / 72.0 * 12.0, y: size.height / 48.0 * 12.0),
                               size: CGSize(width: size.width / 72.0 * 48.0, height: size.height / 48.0 * 24.0))
        UIRectFill(greenRect)

        colorWhite.setFill()
        let radius = size.height / 48.0 * 8.0
        let outerCenter = CGPoint(x: size.width / 72.0 * 39.0, y: size.height / 2.0)
        let innerCenter = CGPoint(x: size.width / 72.0 * 42.0, y: size.height / 2.0)
        UIBezierPath(arcCenter: outerCenter,
                     radius: radius,
                     startAngle: 0,
                     endAngle: .pi * 2.0,
                     clockwise: true).fill()
        colorGreen.setFill()
        UIBezierPath(arcCenter: innerCenter,
                     radius: radius,
                     startAngle: 0,
                     endAngle: .pi * 2.0,
                     clockwise: true).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image ?? UIImage()
    }
}

#endif
