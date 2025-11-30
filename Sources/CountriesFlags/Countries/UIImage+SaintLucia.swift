//
//  UIImage+SaintLucia.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Saint_Lucia "wikipedia"
     
     Generates the flag of Saint Lucia.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Saint Lucia.
     */
    internal static func flagSaintLucia(with size: CGSize) -> UIImage {
        let colorBlue = UIColor(red: 102.0 / 255.0,
                                green: 204.0 / 255.0,
                                blue: 1.0,
                                alpha: 1.0)
        let colorWhite = UIColor.white
        let colorBlack = UIColor.black
        let colorYellow = UIColor(red: 1.0,
                                  green: 209.0 / 255.0,
                                  blue: 0.0,
                                  alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        let xUnit = size.width / 72.0
        let yUnit = size.height / 36.0
        let path = UIBezierPath()
        path.move(to: CGPoint(x: xUnit * 24.0, y: yUnit * 14.83239697 * 2.0 + yUnit * 3.16760303))
        path.addLine(to: CGPoint(x: size.width / 2.0, y: yUnit * 3.16760303))
        path.addLine(to: CGPoint(x: xUnit * 48.0, y: yUnit * 14.83239697 * 2.0 + yUnit * 3.16760303))
        path.close()
        path.fill()

        colorBlack.setFill()
        path.removeAllPoints()
        path.move(to: CGPoint(x: xUnit * 25.6, y: yUnit * 14.83239697 * 2.0 + yUnit * 3.16760303))
        path.addLine(to: CGPoint(x: size.width / 2.0, y: yUnit * 7.16760303))
        path.addLine(to: CGPoint(x: xUnit * 46.4, y: yUnit * 14.83239697 * 2.0 + yUnit * 3.16760303))
        path.close()
        path.fill()

        colorYellow.setFill()
        path.removeAllPoints()
        path.move(to: CGPoint(x: xUnit * 24.0, y: yUnit * 14.83239697 * 2.0 + yUnit * 3.16760303))
        path.addLine(to: CGPoint(x: size.width / 2.0, y: size.height / 2.0))
        path.addLine(to: CGPoint(x: xUnit * 48.0, y: yUnit * 14.83239697 * 2.0 + yUnit * 3.16760303))
        path.close()
        path.fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image ?? UIImage()
    }
}

#endif
