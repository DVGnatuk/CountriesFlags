//
//  UIImage+Iceland.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Iceland "wikipedia"
     
     Generates the flag of Iceland.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Iceland.
     */
    internal static func flagIceland(with size: CGSize) -> UIImage {
        let colorBlue = UIColor(red: 2.0 / 255.0,
                                green: 82.0 / 255.0,
                                blue: 156.0 / 255.0,
                                alpha: 1.0)
        let colorRed = UIColor(red: 220.0 / 255.0,
                               green: 30.0 / 255.0,
                               blue: 53.0 / 255.0,
                               alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        // horizontal line
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 18.0 * 7.0),
                          size: CGSize(width: size.width, height: size.height / 18.0 * 4.0)))
        // vertical line
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 25.0 * 7.0, y: 0.0),
                          size: CGSize(width: size.width / 25.0 * 4.0, height: size.height)))

        colorRed.setFill()
        // horizontal line
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 18.0 * 8.0),
                          size: CGSize(width: size.width, height: size.height / 18.0 * 2.0)))
        // vertical line
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 25.0 * 8.0, y: 0.0),
                          size: CGSize(width: size.width / 25.0 * 2.0, height: size.height)))

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image ?? UIImage()
    }
}

#endif
