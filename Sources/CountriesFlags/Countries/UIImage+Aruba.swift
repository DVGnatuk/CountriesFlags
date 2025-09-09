//
//  UIImage+Aruba.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Aruba "wikipedia"
     
     Generates the flag of Aruba.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Aruba.
     */
    internal static func flagAruba(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 65.0 / 255.0,
                                green: 143.0 / 255.0,
                                blue: 222.0 / 255.0,
                                alpha: 1.0)
        let colorYellow = UIColor(red: 1.0,
                                  green: 210.0 / 255.0,
                                  blue: 0.0,
                                  alpha: 1.0)
        let colorRed = UIColor(red: 246.0 / 255.0,
                               green: 52.0 / 255.0,
                               blue: 63.0 / 255.0,
                               alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorYellow.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 18.0 * 12.0),
                          size: CGSize(width: size.width, height: size.height / 18.0)))
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 18.0 * 14.0),
                          size: CGSize(width: size.width, height: size.height / 18.0)))

        colorWhite.setFill()
        UIBezierPath.star(at: CGPoint(x: size.width / 27.0 * 4.0, y: size.height / 18.0 * 4.0),
                          radius: size.height / 18.0 * 3.0,
                          type: .fourPointed).fill()

        colorRed.setFill()
        UIBezierPath.star(at: CGPoint(x: size.width / 27.0 * 4.0, y: size.height / 18.0 * 4.0),
                          radius: size.height / 18.0 * 2.3,
                          type: .fourPointed).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
