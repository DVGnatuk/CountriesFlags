//
//  UIImage+Micronesia.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_the_Federated_States_of_Micronesia "wikipedia"
     
     Generates the flag of the Federated States of Micronesia.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of the Federated States of Micronesia.
     */
    internal static func flagMicronesia(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 117.0 / 255.0,
                                green: 178.0 / 255.0,
                                blue: 221.0 / 255.0,
                                alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        // top
        UIBezierPath.star(with: CGSize(width: size.width, height: size.height / 5.0 * 2.0),
                          radius: size.height / 5.0 / 2.0).fill()
        // bottom
        var path = UIBezierPath.star(with: CGSize(width: size.width, height: size.height / 5.0 * 2.0),
                                     radius: size.height / 5.0 / 2.0)
        path.rotate(to: 180.0, around: CGPoint(x: size.width / 2.0, y: size.height / 2.0))
        path.fill()
        // right
        path = UIBezierPath.star(with: CGSize(width: size.width, height: size.height / 5.0 * 2.0),
                                 radius: size.height / 5.0 / 2.0)
        path.rotate(to: 90.0, around: CGPoint(x: size.width / 2.0, y: size.height / 2.0))
        path.fill()
        // left
        path = UIBezierPath.star(with: CGSize(width: size.width, height: size.height / 5.0 * 2.0),
                                 radius: size.height / 5.0 / 2.0)
        path.rotate(to: -90.0, around: CGPoint(x: size.width / 2.0, y: size.height / 2.0))
        path.fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
