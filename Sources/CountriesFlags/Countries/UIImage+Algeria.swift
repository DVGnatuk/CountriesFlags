//
//  UIImage+Algeria.swift
//  CountriesFlags
//

// swiftlint:disable function_body_length

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Algeria "wikipedia"
     
     Generates the flag of Algeria.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Algeria.
     */
    internal static func flagAlgeria(with size: CGSize) -> UIImage? {
        let colorRed = UIColor(red: 217.0 / 255.0,
                               green: 0.0,
                               blue: 18.0 / 255.0,
                               alpha: 1.0)
        let colorGreen = UIColor(red: 0.0,
                                 green: 102.0 / 255.0,
                                 blue: 51.0 / 255.0,
                                 alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorWhite.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorGreen.setFill()
        UIRectFill(CGRect(origin: .zero,
                          size: CGSize(width: size.width / 2.0, height: size.height)))

        colorRed.setFill()
        UIBezierPath(arcCenter: size.midPoint,
                     radius: size.height / 4.0,
                     startAngle: 0.0,
                     endAngle: .pi * 2.0,
                     clockwise: true).fill()

        colorWhite.setFill()
        UIBezierPath(arcCenter: CGPoint(x: size.width / 2.0 + size.height / 20.0 * 1.207628020, y: size.height / 2.0),
                     radius: size.height / 20.0 * 4.0,
                     startAngle: 0.0,
                     endAngle: .pi * 2.0,
                     clockwise: true).fill()

        colorGreen.setFill()
        let startAngle = Measurement(value: 107.6, unit: UnitAngle.degrees).converted(to: .radians).value
        let endAngle = Measurement(value: -107.6, unit: UnitAngle.degrees).converted(to: .radians).value
        UIBezierPath(arcCenter: CGPoint(x: size.width / 2.0 + size.height / 20.0 * 1.207628020, y: size.height / 2.0),
                     radius: size.height / 20.0 * 4.0,
                     startAngle: startAngle,
                     endAngle: endAngle,
                     clockwise: true).fill()

        colorRed.setFill()
        let starCenter = CGPoint(x: size.width / 2.0 + size.height / 20.0 * 2.022542486, y: size.height / 2.0)
        let path = UIBezierPath.star(at: starCenter, radius: size.height / 20.0 * 2.5)
        path.rotate(to: 18.0, around: starCenter)
        path.fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif

// swiftlint:enable function_body_length
