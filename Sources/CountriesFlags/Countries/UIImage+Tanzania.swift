//
//  UIImage+Tanzania.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Tanzania "wikipedia"
     
     Generates the flag of Tanzania.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Tanzania.
     */
    internal static func flagTanzania(with size: CGSize) -> UIImage? {
        let colorGreen = UIColor(red: 30.0 / 255.0,
                                 green: 181.0 / 255.0,
                                 blue: 58.0 / 255.0,
                                 alpha: 1.0)
        let colorYellow = UIColor(red: 252.0 / 255.0,
                                  green: 209.0 / 255.0,
                                  blue: 22.0 / 255.0,
                                  alpha: 1.0)
        let colorBlack = UIColor.black
        let colorBlue = UIColor(red: 0.0,
                                green: 163.0 / 255.0,
                                blue: 221.0 / 255.0,
                                alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorGreen.setFill()
        var path = UIBezierPath()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: size.width, y: 0.0))
        path.addLine(to: CGPoint(x: 0.0, y: size.height))
        path.close()
        path.fill()

        path = UIBezierPath()
        path.move(to: CGPoint(x: 0.0, y: size.height))
        path.addLine(to: CGPoint(x: size.width, y: 0.0))
        path.close()

        colorYellow.setStroke()
        path.lineWidth = size.height / 854.0 * 340.0
        path.stroke()

        colorBlack.setStroke()
        path.lineWidth = size.height / 854.0 * 230.0
        path.stroke()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
