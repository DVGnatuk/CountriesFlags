//
//  UIImage+Honduras.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Honduras "wikipedia"
     
     Generates the flag of Honduras.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Honduras.
     */
    internal static func flagHonduras(with size: CGSize) -> UIImage {
        let colorBlueTurquoise = UIColor(red: 0.0,
                                         green: 188.0 / 255.0,
                                         blue: 228.0 / 255.0,
                                         alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorBlueTurquoise.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 36.0 * 12.0),
                          size: CGSize(width: size.width, height: size.height / 36.0 * 12.0)))

        colorBlueTurquoise.setFill()
        let radius = CGFloat(size.height / 72.0 * 8.0) / 2.0
        // center
        UIBezierPath.star(at: size.midPoint, radius: radius).fill()
        // top left
        UIBezierPath.star(at: CGPoint(x: size.width / 72.0 * 26.0, y: size.height / 36.0 * 15.0),
                          radius: radius).fill()
        // top right
        UIBezierPath.star(at: CGPoint(x: size.width / 72.0 * 46.0, y: size.height / 36.0 * 15.0),
                          radius: radius).fill()
        // bottom left
        UIBezierPath.star(at: CGPoint(x: size.width / 72.0 * 26.0, y: size.height / 36.0 * 21.0),
                          radius: radius).fill()
        // bottom right
        UIBezierPath.star(at: CGPoint(x: size.width / 72.0 * 46.0, y: size.height / 36.0 * 21.0),
                          radius: radius).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image ?? UIImage()
    }
}

#endif
