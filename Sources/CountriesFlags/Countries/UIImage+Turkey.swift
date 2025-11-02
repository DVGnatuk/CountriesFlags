//
//  UIImage+Turkey.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Turkey "wikipedia"
     
     Generates the flag of Turkey.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Turkey.
     */
    internal static func flagTurkey(with size: CGSize) -> UIImage? {
        let colorRed = UIColor(red: 227.0 / 255.0,
                               green: 10.0 / 255.0,
                               blue: 23.0 / 255.0,
                               alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        UIBezierPath(arcCenter: CGPoint(x: size.height / 2.0, y: size.height / 2.0),
                     radius: size.height / 4.0,
                     startAngle: 0,
                     endAngle: .pi * 2.0,
                     clockwise: true).fill()

        colorRed.setFill()
        UIBezierPath(arcCenter: CGPoint(x: size.height / 2.0 + size.height / 16.0, y: size.height / 2.0),
                     radius: size.height * 2.0 / 10.0,
                     startAngle: 0,
                     endAngle: .pi * 2.0,
                     clockwise: true).fill()

        colorWhite.setFill()
        let starCenter = CGPoint(x: size.height / 1280.0 * 1050.0, y: size.height / 2.0)
        let path = UIBezierPath.star(at: starCenter, radius: size.height / 8.0)
        path.rotate(to: -90.0, around: starCenter)
        path.fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
