//
//  UIImage+Sudan.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Sudan "wikipedia"
     
     Generates the flag of Sudan.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Sudan.
     */
    internal static func flagSudan(with size: CGSize) -> UIImage? {
        let colorGreen = UIColor(red: 0.0,
                                 green: 114.0 / 255.0,
                                 blue: 41.0 / 255.0,
                                 alpha: 1.0)
        let colorRed = UIColor(red: 210.0 / 255.0,
                               green: 16.0 / 255.0,
                               blue: 52.0 / 255.0,
                               alpha: 1.0)
        let colorBlack = UIColor.black
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 3.0),
                          size: CGSize(width: size.width, height: size.height / 3.0)))

        colorBlack.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 3.0 * 2.0),
                          size: CGSize(width: size.width, height: size.height / 3.0)))

        colorGreen.setFill()
        UIBezierPath.triangle(in: CGSize(width: size.width / 6.0 * 4.0, height: size.height),
                              type: .leftMiddle).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
