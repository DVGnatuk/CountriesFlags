//
//  UIImage+SovietUnion.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_the_Soviet_Union "wikipedia"
     
     Generates the flag of the Union of Soviet Socialist Republics.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of the Union of Soviet Socialist Republics.
     */
    internal static func flagSovietUnion(with size: CGSize) -> UIImage? {
        let colorRed = UIColor(red: 203.0 / 255.0,
                               green: 0.0,
                               blue: 0.0,
                               alpha: 1.0)
        let colorYellow = UIColor(red: 1.0,
                                  green: 215.0 / 255.0,
                                  blue: 0.0,
                                  alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        // TODO: rework star
        colorYellow.setFill()
//        colorYellow.setStroke()
        let starCenter = CGPoint(x: size.width / 100.0 * 16.7, y: size.height / 100.0 * 12.5)
        UIBezierPath.star(at: starCenter, radius: size.height / 16.0).fill()
        colorRed.setFill()
        UIBezierPath.star(at: starCenter, radius: size.height / 24.5).fill()

        colorYellow.setFill()
//        colorYellow.setStroke()
        // draw hammer
        let path = UIBezierPath()
        path.move(to: CGPoint(x: size.width / 1000.0 * 116.0, y: size.height / 1000.0 * 290.0))
        path.addLine(to: CGPoint(x: size.width / 1000.0 * 148.0, y: size.height / 1000.0 * 227.0))
        path.addLine(to: CGPoint(x: size.width / 1000.0 * 175.0, y: size.height / 1000.0 * 234.0))
        path.addLine(to: CGPoint(x: size.width / 1000.0 * 155.3, y: size.height / 1000.0 * 273.0))
        path.addLine(to: CGPoint(x: size.width / 1000.0 * 225.0, y: size.height / 1000.0 * 406.0))
        path.addArc(withCenter: CGPoint(x: size.width / 1000.0 * 221.0, y: size.height / 1000.0 * 421.8),
                    radius: size.height / 1000.0 * 16.6,
                    startAngle: 5.2 * .pi / 3.0,
                    endAngle: 2.0 * .pi / 3.0,
                    clockwise: true)
        path.addLine(to: CGPoint(x: size.width / 1000.0 * 146.0, y: size.height / 1000.0 * 290.0))
        path.addLine(to: CGPoint(x: size.width / 1000.0 * 130.9, y: size.height / 1000.0 * 320.0))
        path.close()
        path.fill()

        // TODO: rework sickle
        // draw sickle
        path.removeAllPoints()
        path.move(to: CGPoint(x: size.width / 1000.0 * 169.0, y: size.height / 1000.0 * 188.0))
        path.addCurve(to: CGPoint(x: size.width / 1000.0 * 141.7, y: size.height / 1000.0 * 377.3),
                      controlPoint1: CGPoint(x: size.width / 1000.0 * 263.0, y: size.height / 1000.0 * 260.5),
                      controlPoint2: CGPoint(x: size.width / 1000.0 * 209.9, y: size.height / 1000.0 * 492.0))
        path.addCurve(to: CGPoint(x: size.width / 1000.0 * 132.2, y: size.height / 1000.0 * 393.2), // handle
                      controlPoint1: CGPoint(x: size.width / 1000.0 * 138.1, y: size.height / 1000.0 * 390.0),
                      controlPoint2: CGPoint(x: size.width / 1000.0 * 138.0, y: size.height / 1000.0 * 385.0))
        path.addCurve(to: CGPoint(x: size.width / 1000.0 * 109.0, y: size.height / 1000.0 * 437.0),
                      controlPoint1: CGPoint(x: size.width / 1000.0 * 125.1, y: size.height / 1000.0 * 410.0),
                      controlPoint2: CGPoint(x: size.width / 1000.0 * 124.0, y: size.height / 1000.0 * 439.0))
        path.addCurve(to: CGPoint(x: size.width / 1000.0 * 105.1, y: size.height / 1000.0 * 430.0), // bottom
                      controlPoint1: CGPoint(x: size.width / 1000.0 * 106.0, y: size.height / 1000.0 * 436.0),
                      controlPoint2: CGPoint(x: size.width / 1000.0 * 106.0, y: size.height / 1000.0 * 436.0))
        path.addCurve(to: CGPoint(x: size.width / 1000.0 * 130.0, y: size.height / 1000.0 * 370.0),
                      controlPoint1: CGPoint(x: size.width / 1000.0 * 107.0, y: size.height / 1000.0 * 387.0),
                      controlPoint2: CGPoint(x: size.width / 1000.0 * 125.0, y: size.height / 1000.0 * 400.0))
        path.addCurve(to: CGPoint(x: size.width / 1000.0 * 141.0, y: size.height / 1000.0 * 359.0),
                      controlPoint1: CGPoint(x: size.width / 1000.0 * 133.0, y: size.height / 1000.0 * 360.0),
                      controlPoint2: CGPoint(x: size.width / 1000.0 * 135.0, y: size.height / 1000.0 * 358.0))
        path.addLine(to: CGPoint(x: size.width / 1000.0 * 144.5, y: size.height / 1000.0 * 352.5))
        path.addCurve(to: CGPoint(x: size.width / 1000.0 * 169.0, y: size.height / 1000.0 * 188.0),
                      controlPoint1: CGPoint(x: size.width / 1000.0 * 195.0, y: size.height / 1000.0 * 435.0),
                      controlPoint2: CGPoint(x: size.width / 1000.0 * 235.0, y: size.height / 1000.0 * 270.0))
        path.close()
        path.fill()
//        path.stroke()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
