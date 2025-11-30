//
//  UIImage+PuertoRico.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Puerto_Rico "wikipedia"
     
     Generates the flag of Puerto Rico.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Puerto Rico.
     */
    internal static func flagPuertoRico(with size: CGSize) -> UIImage {
        let colorBlue = UIColor(red: 8.0 / 255.0,
                                green: 68.0 / 255.0,
                                blue: 1.0,
                                alpha: 1.0)
        let colorRed = UIColor(red: 237.0 / 255.0,
                               green: 0.0,
                               blue: 0.0,
                               alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 30.0 * 6.0),
                          size: CGSize(width: size.width, height: size.height / 30.0 * 6.0)))
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 30.0 * 18.0),
                          size: CGSize(width: size.width, height: size.height / 30.0 * 6.0)))

        colorBlue.setFill()
        UIBezierPath.triangle(in: size, type: .leftEquilateral).fill()

        colorWhite.setFill()
        UIBezierPath.star(at: CGPoint(x: size.width / 45.0 * 8.660254037844386, y: size.height / 2.0),
                          radius: size.height / 30.0 * 10.0 / 2.0).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image ?? UIImage()
    }
}

#endif
