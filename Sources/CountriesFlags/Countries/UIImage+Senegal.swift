//
//  UIImage+Senegal.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Senegal "wikipedia"
     
     Generates the flag of Senegal.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Senegal.
     */
    internal static func flagSenegal(with size: CGSize) -> UIImage {
        let colorGreen = UIColor(red: 0.0,
                                 green: 133.0 / 255.0,
                                 blue: 63.0 / 255.0,
                                 alpha: 1.0)
        let colorYellow = UIColor(red: 253.0 / 255.0,
                                  green: 239.0 / 255.0,
                                  blue: 66.0 / 255.0,
                                  alpha: 1.0)
        let colorRed = UIColor(red: 227.0 / 255.0,
                               green: 27.0 / 255.0,
                               blue: 35.0 / 255.0,
                               alpha: 1.0)
        let lineSize = CGSize(width: size.width / 3.0, height: size.height)

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorGreen.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorYellow.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 3.0, y: 0.0), size: lineSize))

        colorRed.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 3.0 * 2.0, y: 0.0), size: lineSize))

        colorGreen.setFill()
        UIBezierPath.star(at: size.midPoint, radius: size.height * 5.0 / 24.0).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image ?? UIImage()
    }
}

#endif
