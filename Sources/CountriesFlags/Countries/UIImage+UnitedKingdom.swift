//
//  UIImage+UnitedKingdom.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Union_Jack "wikipedia"
     
     Generates the flag of the United Kingdom.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of the United Kingdom.
     */
    internal static func flagUnitedKingdom(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 1.0 / 255.0,
                                green: 33.0 / 255.0,
                                blue: 105.0 / 255.0,
                                alpha: 1.0)
        let colorRed = UIColor(red: 200.0 / 255.0,
                               green: 16.0 / 255.0,
                               blue: 46.0 / 255.0,
                               alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setStroke()
        let path = UIBezierPath()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: size.width, y: size.height))
        path.close()
        path.lineWidth = size.height / 30.0 * 6.0
        path.stroke()

        path.removeAllPoints()
        path.move(to: CGPoint(x: 0.0, y: size.height))
        path.addLine(to: CGPoint(x: size.width, y: 0.0))
        path.close()
        path.lineWidth = size.height / 30.0 * 6.0
        path.stroke()

        colorRed.setStroke()
        path.removeAllPoints()
        path.move(to: CGPoint(x: size.width / 50 * -1.9, y: 0.0))
        path.addLine(to: CGPoint(x: size.width / 50.0 * 23.1, y: size.height / 2.0))
        path.close()
        path.lineWidth = size.height / 30.0 * 2.0
        path.stroke()

        path.removeAllPoints()
        path.move(to: CGPoint(x: size.width / 50 * 24.9, y: size.height / 30.0 * 14.0))
        path.addLine(to: CGPoint(x: size.width / 50.0 * 51.1, y: size.height / 30.0 * -1.8))
        path.close()
        path.lineWidth = size.height / 30.0 * 2.0
        path.stroke()

        path.removeAllPoints()
        path.move(to: CGPoint(x: size.width / 50 * 26.9, y: size.height / 2.0))
        path.addLine(to: CGPoint(x: size.width / 50.0 * 51.9, y: size.height))
        path.close()
        path.lineWidth = size.height / 30.0 * 2.0
        path.stroke()

        path.removeAllPoints()
        path.move(to: CGPoint(x: size.width / 50 * -1.9, y: size.height / 30.0 * 32.3))
        path.addLine(to: CGPoint(x: size.width / 50.0 * 26.8, y: size.height / 2.0))
        path.close()
        path.lineWidth = size.height / 30.0 * 2.0
        path.stroke()

        colorWhite.setStroke()
        path.removeAllPoints()
        path.move(to: CGPoint(x: 0.0, y: size.height / 2.0))
        path.addLine(to: CGPoint(x: size.width, y: size.height / 2.0))
        path.close()
        path.lineWidth = size.height / 30.0 * 10.0
        path.stroke()

        path.removeAllPoints()
        path.move(to: CGPoint(x: size.width / 2.0, y: 0.0))
        path.addLine(to: CGPoint(x: size.width / 2.0, y: size.height))
        path.close()
        path.lineWidth = size.height / 30.0 * 10.0
        path.stroke()

        colorRed.setStroke()
        path.removeAllPoints()
        path.move(to: CGPoint(x: 0.0, y: size.height / 2.0))
        path.addLine(to: CGPoint(x: size.width, y: size.height / 2.0))
        path.close()
        path.lineWidth = size.height / 30.0 * 6.0
        path.stroke()

        path.removeAllPoints()
        path.move(to: CGPoint(x: size.width / 2.0, y: 0.0))
        path.addLine(to: CGPoint(x: size.width / 2.0, y: size.height))
        path.close()
        path.lineWidth = size.height / 30.0 * 6.0
        path.stroke()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
