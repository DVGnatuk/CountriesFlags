//
//  UIImage+SaintVincentAndTheGrenadines.swift
//  CountriesFlags
//

// swiftlint:disable function_body_length

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Saint_Vincent_and_the_Grenadines "wikipedia"
     
     Generates the flag of Saint Vincent and the Grenadines.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Saint Vincent and the Grenadines.
     */
    internal static func flagSaintVincentAndTheGrenadines(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 0.0,
                                green: 38.0 / 255.0,
                                blue: 116.0 / 255.0,
                                alpha: 1.0)
        let colorYellow = UIColor(red: 252.0 / 255.0,
                                  green: 208.0 / 255.0,
                                  blue: 34.0 / 255.0,
                                  alpha: 1.0)
        let colorGreen = UIColor(red: 0.0,
                                 green: 124.0 / 255.0,
                                 blue: 46.0 / 255.0,
                                 alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorYellow.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: CGSize(width: size.width / 4.0, height: size.height)))

        colorGreen.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 4.0 * 3.0, y: 0.0),
                          size: CGSize(width: size.width / 4.0, height: size.height)))

        let path = UIBezierPath()
        path.move(to: CGPoint(x: size.width / 20.0 * 8.5, y: size.height / 20.0 * 6.5))
        path.addLine(to: CGPoint(x: size.width / 20.0 * 9.75, y: size.height / 20.0 * 9.8))
        path.addLine(to: CGPoint(x: size.width / 20.0 * 8.5, y: size.height / 20.0 * 13.0))
        path.addLine(to: CGPoint(x: size.width / 20.0 * 7.25, y: size.height / 20.0 * 9.8))
        path.close()
        path.fill()

        path.removeAllPoints()
        path.move(to: CGPoint(x: size.width / 20.0 * 11.5, y: size.height / 20.0 * 6.5))
        path.addLine(to: CGPoint(x: size.width / 20.0 * 12.75, y: size.height / 20.0 * 9.8))
        path.addLine(to: CGPoint(x: size.width / 20.0 * 11.5, y: size.height / 20.0 * 13.0))
        path.addLine(to: CGPoint(x: size.width / 20.0 * 10.25, y: size.height / 20.0 * 9.8))
        path.close()
        path.fill()

        path.removeAllPoints()
        path.move(to: CGPoint(x: size.width / 20.0 * 10.0, y: size.height / 20.0 * 10.3))
        path.addLine(to: CGPoint(x: size.width / 20.0 * 11.25, y: size.height / 20.0 * 13.6))
        path.addLine(to: CGPoint(x: size.width / 20.0 * 10.0, y: size.height / 20.0 * 16.8))
        path.addLine(to: CGPoint(x: size.width / 20.0 * 8.75, y: size.height / 20.0 * 13.6))
        path.close()
        path.fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif

// swiftlint:enable function_body_length
