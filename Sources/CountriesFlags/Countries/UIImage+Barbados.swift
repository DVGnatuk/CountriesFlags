//
//  UIImage+Barbados.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Barbados "wikipedia"
     
     Generates the flag of Barbados.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Barbados.
     */
    internal static func flagBarbados(with size: CGSize) -> UIImage {
        let colorBlue = UIColor(red: 1.0 / 255.0,
                                green: 38.0 / 255.0,
                                blue: 127.0 / 255.0,
                                alpha: 1.0)
        let colorYellow = UIColor(red: 1.0,
                                  green: 199.0 / 255.0,
                                  blue: 38.0 / 255.0,
                                  alpha: 1.0)
        let colorBlack = UIColor.black

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorYellow.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 3.0, y: 0.0),
                          size: CGSize(width: size.width / 3.0, height: size.height)))

        colorBlack.setFill()
        let path = UIBezierPath()
        path.move(to: CGPoint(x: size.width / 100.0 * 48.2, y: size.height / 100.0 * 74.1));
        path.addLine(to: CGPoint(x: size.width / 100.0 * 48.2, y: size.height / 100.0 * 60.9));
        // left side of trident
        path.addCurve(to: CGPoint(x: size.width / 100.0 * 42.1, y: size.height / 100.0 * 62.2),
                      controlPoint1: CGPoint(x: size.width / 100.0 * 47.2, y: size.height / 100.0 * 60.9),
                      controlPoint2: CGPoint(x: size.width / 100.0 * 43.1, y: size.height / 100.0 * 62.2))
        path.addCurve(to: CGPoint(x: size.width / 100.0 * 35.6, y: size.height / 100.0 * 32.9),
                      controlPoint1: CGPoint(x: size.width / 100.0 * 42.1, y: size.height / 100.0 * 50.0),
                      controlPoint2: CGPoint(x: size.width / 100.0 * 39.0, y: size.height / 100.0 * 41.0))
        path.addCurve(to: CGPoint(x: size.width / 100.0 * 43.1, y: size.height / 100.0 * 38.3),
                      controlPoint1: CGPoint(x: size.width / 100.0 * 35.6, y: size.height / 100.0 * 32.2),
                      controlPoint2: CGPoint(x: size.width / 100.0 * 40.0, y: size.height / 100.0 * 33.6))
        path.addCurve(to: CGPoint(x: size.width / 100.0 * 41.5, y: size.height / 100.0 * 38.4),
                      controlPoint1: CGPoint(x: size.width / 100.0 * 42.3, y: size.height / 100.0 * 38.25),
                      controlPoint2: CGPoint(x: size.width / 100.0 * 41.5, y: size.height / 100.0 * 37.3))
        path.addCurve(to: CGPoint(x: size.width / 100.0 * 44.65, y: size.height / 100.0 * 57.1),
                      controlPoint1: CGPoint(x: size.width / 100.0 * 41.8, y: size.height / 100.0 * 39.0),
                      controlPoint2: CGPoint(x: size.width / 100.0 * 44.6, y: size.height / 100.0 * 50.0))
        
        // central part of trident
        path.addLine(to: CGPoint(x: size.width / 100.0 * 48.2, y: size.height / 100.0 * 56.44));
        path.addLine(to: CGPoint(x: size.width / 100.0 * 48.2, y: size.height / 100.0 * 37.7));
        path.addCurve(to: CGPoint(x: size.width / 100.0 * 45.3, y: size.height / 100.0 * 38.5),
                      controlPoint1: CGPoint(x: size.width / 100.0 * 47.5, y: size.height / 100.0 * 37.7),
                      controlPoint2: CGPoint(x: size.width / 100.0 * 46.0, y: size.height / 100.0 * 38.0))
        path.addCurve(to: CGPoint(x: size.width / 100.0 * 49.9, y: size.height / 100.0 * 25.7),
                      controlPoint1: CGPoint(x: size.width / 100.0 * 47.9, y: size.height / 100.0 * 35.0),
                      controlPoint2: CGPoint(x: size.width / 100.0 * 49.7, y: size.height / 100.0 * 27.5))
        path.addCurve(to: CGPoint(x: size.width / 100.0 * 54.5, y: size.height / 100.0 * 38.5),
                      controlPoint1: CGPoint(x: size.width / 100.0 * 51.5, y: size.height / 100.0 * 32.0),
                      controlPoint2: CGPoint(x: size.width / 100.0 * 52.5, y: size.height / 100.0 * 35.1))
        path.addCurve(to: CGPoint(x: size.width / 100.0 * 51.6, y: size.height / 100.0 * 37.7),
                      controlPoint1: CGPoint(x: size.width / 100.0 * 54.0, y: size.height / 100.0 * 38.0),
                      controlPoint2: CGPoint(x: size.width / 100.0 * 52.1, y: size.height / 100.0 * 37.7))
        path.addLine(to: CGPoint(x: size.width / 100.0 * 51.6, y: size.height / 100.0 * 56.44));
        path.addLine(to: CGPoint(x: size.width / 100.0 * 55.15, y: size.height / 100.0 * 57.1));

        // right side of trident
        path.addCurve(to: CGPoint(x: size.width / 100.0 * 58.0, y: size.height / 100.0 * 39.0),
                      controlPoint1: CGPoint(x: size.width / 100.0 * 55.1, y: size.height / 100.0 * 53.0),
                      controlPoint2: CGPoint(x: size.width / 100.0 * 57.1, y: size.height / 100.0 * 42.0))
        path.addCurve(to: CGPoint(x: size.width / 100.0 * 56.7, y: size.height / 100.0 * 38.3),
                      controlPoint1: CGPoint(x: size.width / 100.0 * 58.5, y: size.height / 100.0 * 37.0),
                      controlPoint2: CGPoint(x: size.width / 100.0 * 57.5, y: size.height / 100.0 * 38.1))
        path.addCurve(to: CGPoint(x: size.width / 100.0 * 64.2, y: size.height / 100.0 * 32.9),
                      controlPoint1: CGPoint(x: size.width / 100.0 * 58.0, y: size.height / 100.0 * 35.0),
                      controlPoint2: CGPoint(x: size.width / 100.0 * 64.0, y: size.height / 100.0 * 32.0))
        path.addCurve(to: CGPoint(x: size.width / 100.0 * 57.7, y: size.height / 100.0 * 62.2),
                      controlPoint1: CGPoint(x: size.width / 100.0 * 60.9, y: size.height / 100.0 * 41.0),
                      controlPoint2: CGPoint(x: size.width / 100.0 * 57.7, y: size.height / 100.0 * 50.0))
        path.addCurve(to: CGPoint(x: size.width / 100.0 * 51.6, y: size.height / 100.0 * 60.9),
                      controlPoint1: CGPoint(x: size.width / 100.0 * 56.7, y: size.height / 100.0 * 62.2),
                      controlPoint2: CGPoint(x: size.width / 100.0 * 52.6, y: size.height / 100.0 * 60.9))
        path.addLine(to: CGPoint(x: size.width / 100.0 * 51.6, y: size.height / 100.0 * 74.1));
        path.close()
        path.fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image ?? UIImage()
    }
}

#endif
