//
//  UIImage+Pakistan.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Pakistan "wikipedia"
     
     Generates the flag of Pakistan.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Pakistan.
     */
    internal static func flagPakistan(with size: CGSize) -> UIImage {
        let colorGreen = UIColor(red: 1.0 / 255.0,
                                 green: 65.0 / 255.0,
                                 blue: 28.0 / 255.0,
                                 alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorGreen.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        UIRectFill(CGRect(origin: .zero, size: CGSize(width: size.width / 30.0 * 7.5, height: size.height)))

        UIBezierPath(arcCenter: CGPoint(x: size.width / 30.0 * 18.75, y: size.height / 2.0),
                     radius: size.height / 20.0 * 6.0,
                     startAngle: 0.0,
                     endAngle: .pi * 2.0,
                     clockwise: true).fill()

        colorGreen.setFill()
        UIBezierPath(arcCenter: CGPoint(x: size.width / 30.0 * 20.3, y: size.height / 20.0 * 8.6),
                     radius: size.height / 20.0 * 5.5,
                     startAngle: 0.0,
                     endAngle: .pi * 2.0,
                     clockwise: true).fill()

        colorWhite.setFill()
        let starCenter = CGPoint(x: size.width / 30.0 * 21.75, y: size.height / 20.0 * 7.35)
        let path = UIBezierPath.star(at: starCenter, radius: size.height / 20.0 * 2.0)
        path.rotate(to: -24.0, around: CGPoint(x: size.width / 30.0 * 21.75, y: size.height / 20.0 * 14.7 / 2.0))
        path.fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image ?? UIImage()
    }
}

#endif
