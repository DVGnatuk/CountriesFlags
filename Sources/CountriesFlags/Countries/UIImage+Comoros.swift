//
//  UIImage+Comoros.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_the_Comoros "wikipedia"
     
     Generates the flag of Comoros.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Comoros.
     */
    internal static func flagComoros(with size: CGSize) -> UIImage? {
        let colorGreen = UIColor(red: 0.0,
                                 green: 150.0 / 255.0,
                                 blue: 57.0 / 255.0,
                                 alpha: 1.0)
        let colorYellow = UIColor(red: 1.0,
                                  green: 209.0 / 255.0,
                                  blue: 0.0,
                                  alpha: 1.0)
        let colorWhite = UIColor.white
        let colorRed = UIColor(red: 239.0 / 255.0,
                               green: 51.0 / 255.0,
                               blue: 64.0 / 255.0,
                               alpha: 1.0)
        let colorBlue = UIColor(red: 0.0,
                                green: 61.0 / 255.0,
                                blue: 165.0 / 255.0,
                                alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorYellow.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 4.0),
                          size: CGSize(width: size.width, height: size.height / 4.0)))

        colorRed.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 4.0 * 2.0),
                          size: CGSize(width: size.width, height: size.height / 4.0)))

        colorBlue.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 4.0 * 3.0),
                          size: CGSize(width: size.width, height: size.height / 4.0)))

        colorGreen.setFill()
        UIBezierPath.triangle(in: size, type: .leftMiddle).fill()

        colorWhite.setFill()
        var radius = size.height / 50.0 * 11.8
        let outerCenter = CGPoint(x: size.width * 0.17, y: size.height / 2.0)
        UIBezierPath(arcCenter: outerCenter,
                     radius: radius,
                     startAngle: 0,
                     endAngle: .pi * 2.0,
                     clockwise: true).fill()
        colorGreen.setFill()
        radius = size.height / 50.0 * 11.65
        let innerCenter = CGPoint(x: size.width * 0.228, y: size.height / 2.0)
        UIBezierPath(arcCenter: innerCenter,
                     radius: radius,
                     startAngle: 0,
                     endAngle: .pi * 2.0,
                     clockwise: true).fill()

        colorWhite.setFill()
        let starRadius = size.height / 50.0 * 2.3
        let starCenterX = size.width / 100.0 * 20.45
        UIBezierPath.star(at: CGPoint(x: starCenterX, y: size.height / 100.0 * 34.75),
                          radius: starRadius).fill()
        UIBezierPath.star(at: CGPoint(x: starCenterX, y: size.height / 100.0 * 45.0),
                          radius: starRadius).fill()
        UIBezierPath.star(at: CGPoint(x: starCenterX, y: size.height / 100.0 * 55.45),
                          radius: starRadius).fill()
        UIBezierPath.star(at: CGPoint(x: starCenterX, y: size.height / 100.0 * 65.85),
                          radius: starRadius).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
