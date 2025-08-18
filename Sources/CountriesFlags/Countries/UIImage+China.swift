//
//  UIImage+China.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_China "wikipedia"
     
     Generates the flag of China.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of China.
     */
    internal static func flagChina(with size: CGSize) -> UIImage? {
        let colorRed = UIColor(red: 238.0 / 255.0,
                               green: 28.0 / 255.0,
                               blue: 37.0 / 255.0,
                               alpha: 1.0)
        let colorYellow = UIColor.yellow

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorYellow.setFill()
        UIBezierPath.star(with: CGSize(width: size.height / 2.0, height: size.height / 2.0),
                          radius: size.height / 20.0 * 6.0 / 2.0).fill()

        var path = UIBezierPath.star(with: CGSize(width: size.height / 20.0 * 24.4, height: size.height / 20.0 * 10.9),
                                     radius: size.height / 20.0)
        path.rotate(to: 20.0, around: CGPoint(x: size.height / 20.0, y: size.height / 20.0))
        path.fill()

        UIBezierPath.star(with: CGSize(width: size.height / 20.0 * 24.0, height: size.height / 20.0 * 14.0),
                          radius: size.height / 20.0).fill()

        path = UIBezierPath.star(with: CGSize(width: size.height / 20.0 * 20.2, height: size.height / 20.0 * 22.8),
                                 radius: size.height / 20.0)
        path.rotate(to: 45.0, around: CGPoint(x: size.height, y: size.height / 20.0 * 10.0))
        path.fill()

        path = UIBezierPath.star(with: CGSize(width: size.height / 20.0 * 20.1, height: size.height / 20.0 * 12.5),
                                 radius: size.height / 20.0)
        path.rotate(to: 24.0, around: CGPoint(x: size.height, y: size.height / 20.0 * 4.0))
        path.fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
