//
//  UIImage+Laos.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Laos "wikipedia"
     
     Generates the flag of Laos.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Laos.
     */
    internal static func flagLaos(with size: CGSize) -> UIImage {
        let colorBlue = UIColor(red: 0.0,
                                green: 40.0 / 255.0,
                                blue: 104.0 / 255.0,
                                alpha: 1.0)
        let colorRed = UIColor(red: 206.0 / 255.0,
                               green: 17.0 / 255.0,
                               blue: 38.0 / 255.0,
                               alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorBlue.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 4.0),
                          size: CGSize(width: size.width, height: size.height / 2.0)))

        colorWhite.setFill()
        UIBezierPath(arcCenter: size.midPoint,
                     radius: size.height / 2.0 * (4.0 / 5.0) / 2.0,
                     startAngle: 0.0,
                     endAngle: .pi * 2.0,
                     clockwise: true).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image ?? UIImage()
    }
}

#endif
