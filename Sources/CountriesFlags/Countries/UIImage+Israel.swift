//
//  UIImage+Israel.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Israel "wikipedia"
     
     Generates the flag of Israel.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Israel.
     */
    internal static func flagIsrael(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 0.0,
                                green: 56.0 / 255.0,
                                blue: 184.0 / 255.0,
                                alpha: 1.0)
        let colorWhite = UIColor.white
        let lineSize = CGSize(width: size.width, height: size.height / 160.0 * 25.0)

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorWhite.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorBlue.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 160.0 * 15.0), size: lineSize))
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 160.0 * 120.0), size: lineSize))

        colorBlue.setStroke()
        let triangleRadius = size.height / 160.0 * 50.5
        let triangleCenter = CGPoint(x: size.width / 2.0,
                                     y: size.height / 2.0 - size.height / 160.0 * 7.3)
        let path = UIBezierPath.triangle(at: triangleCenter, radius: triangleRadius)
        path.lineWidth = size.height / 160.0 * 5.4
        path.stroke()

        path.rotate(to: 180.0, around: size.midPoint)
        path.stroke()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
