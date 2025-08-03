//
//  UIImage+AlandIslands.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Åland "wikipedia"
     
     Generates the flag of Aland islands.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Aland islands.
     */
    internal static func flagAlandIslands(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 0.0,
                                green: 100.0 / 255.0,
                                blue: 174.0 / 255.0,
                                alpha: 1.0)
        let colorYellow = UIColor(red: 1.0,
                                  green: 211.0 / 255.0,
                                  blue: 0.0,
                                  alpha: 1.0)
        let colorRed = UIColor(red: 219.0 / 255.0,
                               green: 15.0 / 255.0,
                               blue: 22.0 / 255.0,
                               alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorYellow.setFill()
        // horizontal line
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 837.0 * 295.0),
                          size: CGSize(width: size.width, height: size.height / 837.0 * 247.0)))
        // vertical line
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 1280.0 * 394.0, y: 0.0),
                          size: CGSize(width: size.width / 1280.0 * 246.0, height: size.height)))

        colorRed.setFill()
        // horizontal line
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 837.0 * 369.0),
                          size: CGSize(width: size.width, height: size.height / 837.0 * 99.0)))
        // vertical line
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 1280.0 * 468.0, y: 0.0),
                          size: CGSize(width: size.width / 1280.0 * 99.0, height: size.height)))

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
