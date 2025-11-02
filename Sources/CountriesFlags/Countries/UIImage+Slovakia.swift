//
//  UIImage+Slovakia.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Slovakia "wikipedia"
     
     Generates the flag of the Slovak Republic.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of the Slovak Republic.
     */
    internal static func flagSlovakia(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 37.0 / 255.0,
                                green: 74.0 / 255.0,
                                blue: 165.0 / 255.0,
                                alpha: 1.0)
        let colorRed = UIColor(red: 237.0 / 255.0,
                               green: 28.0 / 255.0,
                               blue: 36.0 / 255.0,
                               alpha: 1.0)
        let colorWhite = UIColor.white
        let lineSize = CGSize(width: size.width, height: size.height / 3.0)

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorWhite.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorBlue.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 3.0), size: lineSize))

        colorRed.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 3.0 * 2.0), size: lineSize))

        colorWhite.setStroke()
        colorRed.setFill()
        let path = UIBezierPath()
        // draw shield
        path.move(to: CGPoint(x: size.width / 90.0 * 15.0, y: size.height / 60.0 * 14.5))
        path.addCurve(to: CGPoint(x: size.width / 90.0 * 14.5, y: size.height / 60.0 * 28.5),
                      controlPoint1: CGPoint(x: size.width / 90.0 * 14.7, y: size.height / 60.0 * 18.0),
                      controlPoint2: CGPoint(x: size.width / 90.0 * 14.7, y: size.height / 60.0 * 20.0))
        path.addCurve(to: CGPoint(x: size.width / 90.0 * 27.0, y: size.height / 60.0 * 45.5),
                      controlPoint1: CGPoint(x: size.width / 90.0 * 14.8, y: size.height / 60.0 * 36.3),
                      controlPoint2: CGPoint(x: size.width / 90.0 * 18.1, y: size.height / 60.0 * 40.8))
        path.addCurve(to: CGPoint(x: size.width / 90.0 * 39.5, y: size.height / 60.0 * 28.5),
                      controlPoint1: CGPoint(x: size.width / 90.0 * 40.1, y: size.height / 60.0 * 38.8),
                      controlPoint2: CGPoint(x: size.width / 90.0 * 39.0, y: size.height / 60.0 * 31.0))
        path.addCurve(to: CGPoint(x: size.width / 90.0 * 38.96, y: size.height / 60.0 * 14.5),
                      controlPoint1: CGPoint(x: size.width / 90.0 * 39.4, y: size.height / 60.0 * 20.0),
                      controlPoint2: CGPoint(x: size.width / 90.0 * 39.3, y: size.height / 60.0 * 18.0))
        path.addLine(to: CGPoint(x: size.width / 90.0 * 15.0, y: size.height / 60.0 * 14.5))
        path.close()
        path.lineWidth = size.width / 90.0 * (9.0 / 10.0)
        path.fill()
        path.stroke()

        // draw central line
        colorWhite.setFill()
        path.removeAllPoints()
        path.move(to: CGPoint(x: size.width / 90.0 * 26.0, y: size.height / 60.0 * 40.0))
        path.addLine(to: CGPoint(x: size.width / 90.0 * 26.0, y: size.height / 60.0 * 22.85))
        // bottom left
        path.addLine(to: CGPoint(x: size.width / 90.0 * 26.0, y: size.height / 60.0 * 28.4))

        path.addCurve(to: CGPoint(x: size.width / 90.0 * 19.7, y: size.height / 60.0 * 29.0),
                      controlPoint1: CGPoint(x: size.width / 90.0 * 24.0, y: size.height / 60.0 * 28.3),
                      controlPoint2: CGPoint(x: size.width / 90.0 * 22.6, y: size.height / 60.0 * 28.4))
        path.addCurve(to: CGPoint(x: size.width / 90.0 * 19.7, y: size.height / 60.0 * 25.4),
                      controlPoint1: CGPoint(x: size.width / 90.0 * 19.75, y: size.height / 60.0 * 27.2),
                      controlPoint2: CGPoint(x: size.width / 90.0 * 19.75, y: size.height / 60.0 * 27.2))
        path.addCurve(to: CGPoint(x: size.width / 90.0 * 26.0, y: size.height / 60.0 * 26.1),
                      controlPoint1: CGPoint(x: size.width / 90.0 * 23.6, y: size.height / 60.0 * 26.3),
                      controlPoint2: CGPoint(x: size.width / 90.0 * 25.0, y: size.height / 60.0 * 26.1))

        path.addLine(to: CGPoint(x: size.width / 90.0 * 26.0, y: size.height / 60.0 * 22.9))
        // middle let
        path.addCurve(to: CGPoint(x: size.width / 90.0 * 21.0, y: size.height / 60.0 * 23.6),
                      controlPoint1: CGPoint(x: size.width / 90.0 * 24.0, y: size.height / 60.0 * 22.9),
                      controlPoint2: CGPoint(x: size.width / 90.0 * 22.6, y: size.height / 60.0 * 23.0))
        path.addCurve(to: CGPoint(x: size.width / 90.0 * 21.0, y: size.height / 60.0 * 20.0),
                      controlPoint1: CGPoint(x: size.width / 90.0 * 21.05, y: size.height / 60.0 * 21.8),
                      controlPoint2: CGPoint(x: size.width / 90.0 * 21.05, y: size.height / 60.0 * 21.8))
        path.addCurve(to: CGPoint(x: size.width / 90.0 * 26.0, y: size.height / 60.0 * 20.7),
                      controlPoint1: CGPoint(x: size.width / 90.0 * 23.6, y: size.height / 60.0 * 20.8),
                      controlPoint2: CGPoint(x: size.width / 90.0 * 25.0, y: size.height / 60.0 * 20.6))
        // top
        path.addCurve(to: CGPoint(x: size.width / 90.0 * 25.3, y: size.height / 60.0 * 16.05),
                      controlPoint1: CGPoint(x: size.width / 90.0 * 25.9, y: size.height / 60.0 * 19.0),
                      controlPoint2: CGPoint(x: size.width / 90.0 * 25.9, y: size.height / 60.0 * 18.6))
        path.addCurve(to: CGPoint(x: size.width / 90.0 * 28.8, y: size.height / 60.0 * 16.05),
                      controlPoint1: CGPoint(x: size.width / 90.0 * 27.05, y: size.height / 60.0 * 16.15),
                      controlPoint2: CGPoint(x: size.width / 90.0 * 27.05, y: size.height / 60.0 * 16.15))
        path.addCurve(to: CGPoint(x: size.width / 90.0 * 28.0, y: size.height / 60.0 * 20.7),
                      controlPoint1: CGPoint(x: size.width / 90.0 * 28.2, y: size.height / 60.0 * 18.5),
                      controlPoint2: CGPoint(x: size.width / 90.0 * 28.2, y: size.height / 60.0 * 19.0))
        // middle right
        path.addCurve(to: CGPoint(x: size.width / 90.0 * 33.0, y: size.height / 60.0 * 20.0),
                      controlPoint1: CGPoint(x: size.width / 90.0 * 30.8, y: size.height / 60.0 * 20.5),
                      controlPoint2: CGPoint(x: size.width / 90.0 * 30.8, y: size.height / 60.0 * 20.5))
        path.addCurve(to: CGPoint(x: size.width / 90.0 * 33.0, y: size.height / 60.0 * 23.6),
                      controlPoint1: CGPoint(x: size.width / 90.0 * 32.95, y: size.height / 60.0 * 21.8),
                      controlPoint2: CGPoint(x: size.width / 90.0 * 32.95, y: size.height / 60.0 * 21.8))
        path.addCurve(to: CGPoint(x: size.width / 90.0 * 28.0, y: size.height / 60.0 * 22.9),
                      controlPoint1: CGPoint(x: size.width / 90.0 * 30.5, y: size.height / 60.0 * 23.0),
                      controlPoint2: CGPoint(x: size.width / 90.0 * 30.1, y: size.height / 60.0 * 22.9))

        path.addLine(to: CGPoint(x: size.width / 90.0 * 28.0, y: size.height / 60.0 * 26.1))

        // bottom right
        path.addCurve(to: CGPoint(x: size.width / 90.0 * 34.3, y: size.height / 60.0 * 25.4),
                      controlPoint1: CGPoint(x: size.width / 90.0 * 32.0, y: size.height / 60.0 * 26.0),
                      controlPoint2: CGPoint(x: size.width / 90.0 * 32.0, y: size.height / 60.0 * 26.0))
        path.addCurve(to: CGPoint(x: size.width / 90.0 * 34.3, y: size.height / 60.0 * 29.0),
                      controlPoint1: CGPoint(x: size.width / 90.0 * 34.25, y: size.height / 60.0 * 27.2),
                      controlPoint2: CGPoint(x: size.width / 90.0 * 34.25, y: size.height / 60.0 * 27.2))
        path.addCurve(to: CGPoint(x: size.width / 90.0 * 28.0, y: size.height / 60.0 * 28.4),
                      controlPoint1: CGPoint(x: size.width / 90.0 * 30.5, y: size.height / 60.0 * 28.3),
                      controlPoint2: CGPoint(x: size.width / 90.0 * 30.5, y: size.height / 60.0 * 28.3))

        path.addLine(to: CGPoint(x: size.width / 90.0 * 28.0, y: size.height / 60.0 * 40.0))
        path.close()
        path.fill()

        // draw cloud
        colorBlue.setFill()
        path.removeAllPoints()
        path.move(to: CGPoint(x: size.width / 90.0 * 27.0, y: size.height / 60.0 * 45.0))
        path.addCurve(to: CGPoint(x: size.width / 90.0 * 17.3, y: size.height / 60.0 * 37.0),
                      controlPoint1: CGPoint(x: size.width / 90.0 * 23.8, y: size.height / 60.0 * 43.5),
                      controlPoint2: CGPoint(x: size.width / 90.0 * 20.0, y: size.height / 60.0 * 41.3))
        path.addCurve(to: CGPoint(x: size.width / 90.0 * 23.2, y: size.height / 60.0 * 36.3),
                      controlPoint1: CGPoint(x: size.width / 90.0 * 19.1, y: size.height / 60.0 * 34.0),
                      controlPoint2: CGPoint(x: size.width / 90.0 * 21.4, y: size.height / 60.0 * 34.0))
        path.addCurve(to: CGPoint(x: size.width / 90.0 * 30.85, y: size.height / 60.0 * 36.3),
                      controlPoint1: CGPoint(x: size.width / 90.0 * 25.5, y: size.height / 60.0 * 31.7),
                      controlPoint2: CGPoint(x: size.width / 90.0 * 28.5, y: size.height / 60.0 * 31.7))
        path.addCurve(to: CGPoint(x: size.width / 90.0 * 36.61, y: size.height / 60.0 * 37.0),
                      controlPoint1: CGPoint(x: size.width / 90.0 * 32.6, y: size.height / 60.0 * 34.0),
                      controlPoint2: CGPoint(x: size.width / 90.0 * 34.6, y: size.height / 60.0 * 34.0))
        path.addCurve(to: CGPoint(x: size.width / 90.0 * 27.0, y: size.height / 60.0 * 45.0),
                      controlPoint1: CGPoint(x: size.width / 90.0 * 33.8, y: size.height / 60.0 * 41.3),
                      controlPoint2: CGPoint(x: size.width / 90.0 * 30.6, y: size.height / 60.0 * 43.2))
        path.close()
        path.fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
