//
//  UIImage+Djibouti.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Djibouti "wikipedia"
     
     Generates the flag of Djibouti.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Djibouti.
     */
    internal static func flagDjibouti(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 106.0 / 255.0,
                                green: 178.0 / 255.0,
                                blue: 231.0 / 255.0,
                                alpha: 1.0)
        let colorGreen = UIColor(red: 18.0 / 255.0,
                                 green: 173.0 / 255.0,
                                 blue: 43.0 / 255.0,
                                 alpha: 1.0)
        let colorRed = UIColor(red: 215.0 / 255.0,
                               green: 20.0 / 255.0,
                               blue: 26.0 / 255.0,
                               alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorGreen.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 2.0),
                          size: CGSize(width: size.width, height: size.height / 2.0)))

        colorWhite.setFill()
        UIBezierPath.triangle(in: CGSize(width: size.width / 1280.0 * 1480.0, height: size.height),
                              type: .leftMiddle).fill()

        colorRed.setFill()
        let starCenter = CGPoint(x: size.width / 1200.0 * 265.0,
                                 y: size.height / 100.0 * 51.3)
        UIBezierPath.star(at: starCenter,
                          radius: size.height / 850.0 * 117.5).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
