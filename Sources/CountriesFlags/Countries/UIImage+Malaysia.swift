//
//  UIImage+Malaysia.swift
//  CountriesFlags
//

// swiftlint:disable function_body_length

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Malaysia "wikipedia"
     
     Generates the flag of Malaysia.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Malaysia.
     */
    internal static func flagMalaysia(with size: CGSize) -> UIImage? {
        let colorWhite = UIColor.white
        let colorRed = UIColor(red: 204.0 / 255.0,
                               green: 0.0,
                               blue: 0.0,
                               alpha: 1.0)
        let colorBlue = UIColor(red: 0.0,
                                green: 0.0,
                                blue: 102.0 / 255.0,
                                alpha: 1.0)
        let colorYellow = UIColor(red: 1.0,
                                  green: 204.0 / 255.0,
                                  blue: 0.0,
                                  alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorWhite.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorRed.setFill()
        for index in stride(from: 0.0, through: 12.0, by: 2.0) {
            UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 14.0 * index),
                              size: CGSize(width: size.width, height: size.height / 14.0)))
        }

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: CGSize(width: size.width / 2.0, height: size.height / 14.0 * 8.0)))

        colorYellow.setFill()
        UIBezierPath(arcCenter: CGPoint(x: size.width / 28.0 * 5.75, y: size.height / 14.0 * 4.0),
                     radius: size.height / 14.0 * 6.0 / 2.0,
                     startAngle: 0.0,
                     endAngle: .pi * 2.0,
                     clockwise: true).fill()

        colorBlue.setFill()
        UIBezierPath(arcCenter: CGPoint(x: size.width / 28.0 * 6.4166, y: size.height / 14.0 * 4.0),
                     radius: size.height / 14.0 * 5.333 / 2.0,
                     startAngle: 0.0,
                     endAngle: .pi * 2.0,
                     clockwise: true).fill()

        colorYellow.setFill()
        UIBezierPath.star(with: CGSize(width: size.width / 28.0 * 17.5, height: size.height / 14.0 * 8.0),
                          radius: size.height / 14.0 * 5.0 / 2.0,
                          type: .fourteenPointed).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif

// swiftlint:enable function_body_length
