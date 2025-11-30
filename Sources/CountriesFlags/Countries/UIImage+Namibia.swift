//
//  UIImage+Namibia.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Namibia "wikipedia"
     
     Generates the flag of Namibia.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Namibia.
     */
    internal static func flagNamibia(with size: CGSize) -> UIImage {
        let colorBlue = UIColor(red: 0.0,
                                green: 47.0 / 255.0,
                                blue: 108.0 / 255.0,
                                alpha: 1.0)
        let colorYellow = UIColor(red: 1.0,
                                  green: 205.0 / 255.0,
                                  blue: 0.0,
                                  alpha: 1.0)
        let colorGreen = UIColor(red: 0.0,
                                 green: 154.0 / 255.0,
                                 blue: 68.0 / 255.0,
                                 alpha: 1.0)
        let colorRed = UIColor(red: 200.0 / 255.0,
                               green: 16.0 / 255.0,
                               blue: 46.0 / 255.0,
                               alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorGreen.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorBlue.setFill()
        var path = UIBezierPath()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: 0.0, y: size.height))
        path.addLine(to: CGPoint(x: size.width, y: 0.0))
        path.close()
        path.fill()

        colorWhite.setStroke()
        path.removeAllPoints()
        path.move(to: CGPoint(x: size.width, y: 0.0))
        path.addLine(to: CGPoint(x: 0.0, y: size.height))
        path.close()
        path.lineWidth = size.width / 100.0 * 22.2
        path.stroke()

        colorRed.setStroke()
        path.lineWidth = size.width / 100.0 * 16.7
        path.stroke()

        colorYellow.setFill()
        let starPoint = CGPoint(x: size.width / 100.0 * 20.0, y: size.height / 50.0 * 13.6)
        let starRadius = size.height / 24.0 * 8.0 / 2.0
        UIBezierPath.star(at: starPoint,
                          radius: starRadius,
                          type: .twelvePointed(innerRadius: starRadius * 0.6)).fill()

        colorBlue.setStroke()
        path = UIBezierPath(arcCenter: starPoint,
                            radius: starRadius * 0.55,
                            startAngle: 0.0,
                            endAngle: .pi * 2.0,
                            clockwise: true)
        path.lineWidth = starRadius * 0.55 / 6.0
        path.stroke()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image ?? UIImage()
    }
}

#endif
