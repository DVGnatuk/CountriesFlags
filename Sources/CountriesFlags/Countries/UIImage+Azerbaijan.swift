//
//  UIImage+Azerbaijan.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Azerbaijan "wikipedia"
     
     Generates the flag of Azerbaijan.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Azerbaijan.
     */
    internal static func flagAzerbaijan(with size: CGSize) -> UIImage? {
        let colorWhite = UIColor.white
        let colorBlue = UIColor(red: 0.0,
                                green: 181.0 / 255.0,
                                blue: 226.0 / 255.0,
                                alpha: 1.0)
        let colorRed = UIColor(red: 239.0 / 255.0,
                               green: 54.0 / 255.0,
                               blue: 61.0 / 255.0,
                               alpha: 1.0)
        let colorGreen = UIColor(red: 80.0 / 255.0,
                                 green: 158.0 / 255.0,
                                 blue: 47.0 / 255.0,
                                 alpha: 1.0)
        let lineSize = CGSize(width: size.width, height: size.height / 3.0)

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorRed.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 3.0), size: lineSize))

        colorGreen.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 3.0 * 2.0), size: lineSize))

        colorWhite.setFill()
        UIBezierPath(arcCenter: CGPoint(x: size.width / 1920.0 * 912.0, y: size.height / 2.0),
                     radius: size.height / 10.0 * 1.5,
                     startAngle: 0.0,
                     endAngle: .pi * 2.0,
                     clockwise: true).fill()

        colorRed.setFill()
        UIBezierPath(arcCenter: CGPoint(x: size.width / 1920.0 * 912.0 + size.height / 30.0, y: size.height / 2.0),
                     radius: size.height / 8.0,
                     startAngle: 0.0,
                     endAngle: .pi * 2.0,
                     clockwise: true).fill()

        colorWhite.setFill()
        UIBezierPath.star(at: CGPoint(x: size.width / 1920.0 * 1074.0, y: size.height / 2.0),
                          radius: size.height / 12.0,
                          type: .eightPointed).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
