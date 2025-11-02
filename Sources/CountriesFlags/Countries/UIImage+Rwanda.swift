//
//  UIImage+Rwanda.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Rwanda "wikipedia"
     
     Generates the flag of Rwanda.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Rwanda.
     */
    internal static func flagRwanda(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 0.0,
                                green: 163.0 / 255.0,
                                blue: 224.0 / 255.0,
                                alpha: 1.0)
        let colorYellow = UIColor(red: 250.0 / 255.0,
                                  green: 210.0 / 255.0,
                                  blue: 1.0 / 255.0,
                                  alpha: 1.0)
        let colorGreen = UIColor(red: 32.0 / 255.0,
                                 green: 96.0 / 255.0,
                                 blue: 61.0 / 255.0,
                                 alpha: 1.0)
        let lineSize = CGSize(width: size.width, height: size.height / 130.0 * 32.5)

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorGreen.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 130.0 * 97.5), size: lineSize))

        colorYellow.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 130.0 * 65.0), size: lineSize))

        let starCenter = CGPoint(x: size.width / 195.0 * 160.0, y: size.height / 130.0 * 34.0)
        UIBezierPath.star(at: starCenter,
                          radius: size.height / 130.0 * 42.0 / 2.0,
                          type: .twentyFourPointed(innerRadius: size.height / 130.0 * 13.0 / 2.0)).fill()

        colorBlue.setStroke()
        let path = UIBezierPath(arcCenter: starCenter,
                                radius: size.height / 130.0 * 12.2 / 2.0,
                                startAngle: 0.0,
                                endAngle: .pi * 2.0,
                                clockwise: true)
        path.lineWidth = size.height / 145.0
        path.stroke()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
