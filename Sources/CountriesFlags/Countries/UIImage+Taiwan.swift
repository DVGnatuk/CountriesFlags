//
//  UIImage+Taiwan.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Taiwan "wikipedia"
     
     Generates the flag of Taiwan.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Taiwan.
     */
    internal static func flagTaiwan(with size: CGSize) -> UIImage? {
        let colorRed = UIColor(red: 254.0 / 255.0,
                               green: 0.0,
                               blue: 0.0,
                               alpha: 1.0)
        let colorBlue = UIColor(red: 0.0,
                                green: 0.0,
                                blue: 148.0 / 255.0,
                                alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size.halfSize))

        colorWhite.setFill()
        let starCenter = CGPoint(x: size.width / 4.0, y: size.height / 4.0)
        UIBezierPath.star(at: starCenter,
                          radius: size.height / 80.0 * 15.0,
                          type: .twelvePointed(innerRadius: size.height / 80.0 * 7.5)).fill()

        colorBlue.setStroke()
        let path = UIBezierPath(arcCenter: starCenter,
                                radius: size.height / 80.0 * 8.0,
                                startAngle: 0.0,
                                endAngle: .pi * 2.0,
                                clockwise: true)
        path.lineWidth = size.height / 80.0
        path.stroke()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
