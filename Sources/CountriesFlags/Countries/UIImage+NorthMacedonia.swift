//
//  UIImage+NorthMacedonia.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_North_Macedonia "wikipedia"
     
     Generates the flag of North Macedonia.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of North Macedonia.
     */
    internal static func flagNorthMacedonia(with size: CGSize) -> UIImage? {
        let colorYellow = UIColor(red: 249.0 / 255.0,
                                  green: 214.0 / 255.0,
                                  blue: 22.0 / 255.0,
                                  alpha: 1.0)
        let colorRed = UIColor(red: 206.0 / 255.0,
                               green: 32.0 / 255.0,
                               blue: 40.0 / 255.0,
                               alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorRed.setFill()
        colorRed.setStroke()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorYellow.setFill()
        // left top
        var path = UIBezierPath()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: size.width / 2.0 * 0.3, y: 0.0))
        path.addLine(to: CGPoint(x: size.width / 2.0 * 1.1, y: size.height * 0.56))
        path.close()
        path.fill()

        // left bottom
        path.removeAllPoints()
        path.move(to: CGPoint(x: 0.0, y: size.height))
        path.addLine(to: CGPoint(x: size.width / 2.0 * 0.3, y: size.height))
        path.addLine(to: CGPoint(x: size.width / 2.0 * 1.1, y: size.height * 0.44))
        path.close()
        path.fill()

        // right bottom
        path.removeAllPoints()
        path.move(to: CGPoint(x: size.width, y: size.height))
        path.addLine(to: CGPoint(x: size.width / 2.0 * 1.7, y: size.height))
        path.addLine(to: CGPoint(x: size.width / 2.0 * 0.9, y: size.height * 0.44))
        path.close()
        path.fill()

        // right top
        path.removeAllPoints()
        path.move(to: CGPoint(x: size.width, y: 0.0))
        path.addLine(to: CGPoint(x: size.width / 2.0 * 1.7, y: 0.0))
        path.addLine(to: CGPoint(x: size.width / 2.0 * 0.9, y: size.height * 0.56))
        path.close()
        path.fill()

        // left center
        path.removeAllPoints()
        path.move(to: CGPoint(x: 0.0, y: size.height * 0.4))
        path.addLine(to: CGPoint(x: size.width / 2.0, y: size.height / 2.0))
        path.addLine(to: CGPoint(x: 0.0, y: size.height * 0.6))
        path.close()
        path.fill()

        // right center
        path.removeAllPoints()
        path.move(to: CGPoint(x: size.width, y: size.height * 0.4))
        path.addLine(to: CGPoint(x: size.width / 2.0, y: size.height / 2.0))
        path.addLine(to: CGPoint(x: size.width, y: size.height * 0.6))
        path.close()
        path.fill()

        // top center
        path.removeAllPoints()
        path.move(to: CGPoint(x: size.width / 2.0 * 0.9, y: 0.0))
        path.addLine(to: CGPoint(x: size.width / 2.0, y: size.height / 2.0 * 0.8))
        path.addLine(to: CGPoint(x: size.width / 2.0 * 1.1, y: 0.0))
        path.close()
        path.fill()

        // bottom center
        path.removeAllPoints()
        path.move(to: CGPoint(x: size.width / 2.0 * 0.9, y: size.height))
        path.addLine(to: CGPoint(x: size.width / 2.0, y: size.height / 2.0 * 1.2))
        path.addLine(to: CGPoint(x: size.width / 2.0 * 1.1, y: size.height))
        path.close()
        path.fill()

        path = UIBezierPath(arcCenter: size.midPoint,
                            radius: size.height / 3.5 / 2.0,
                            startAngle: 0.0,
                            endAngle: .pi * 2.0,
                            clockwise: true)
        path.lineWidth = size.height / 14.0
        path.stroke()
        path.fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
