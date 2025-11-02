//
//  UIImage+Tunisia.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Tunisia "wikipedia"
     
     Generates the flag of Tunisia.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Tunisia.
     */
    internal static func flagTunisia(with size: CGSize) -> UIImage? {
        let colorRed = UIColor(red: 231.0 / 255.0,
                               green: 0.0,
                               blue: 19.0 / 255.0,
                               alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        UIBezierPath(arcCenter: CGPoint(x: size.width / 2.0, y: size.height / 2.0),
                     radius: size.height / 4.0,
                     startAngle: 0.0,
                     endAngle: .pi * 2.0,
                     clockwise: true).fill()

        colorRed.setFill()
        UIBezierPath(arcCenter: CGPoint(x: size.width / 2.0, y: size.height / 2.0),
                     radius: size.height / 40.0 * 7.5,
                     startAngle: 0.0,
                     endAngle: .pi * 2.0,
                     clockwise: true).fill()

        colorWhite.setFill()
        UIBezierPath(arcCenter: CGPoint(x: size.width / 60.0 * 32.0, y: size.height / 2.0),
                     radius: size.height / 40.0 * 6.0,
                     startAngle: 0.0,
                     endAngle: .pi * 2.0,
                     clockwise: true).fill()

        colorRed.setFill()
        let starCenter = CGPoint(x: size.width / 60.0 * 32.0, y: size.height / 2.0)
        let path = UIBezierPath.star(at: starCenter, radius: size.height / 40.0 * 4.5)
        path.rotate(to: -18.0, around: starCenter)
        path.fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
