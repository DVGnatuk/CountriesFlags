//
//  UIImage+Norway.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Norway "wikipedia"
     
     Generates the flag of Norway.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Norway.
     */
    internal static func flagNorway(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 0.0,
                                green: 32.0 / 255.0,
                                blue: 91.0 / 255.0,
                                alpha: 1.0)
        let colorRed = UIColor(red: 186.0 / 255.0,
                               green: 12.0 / 255.0,
                               blue: 47.0 / 255.0,
                               alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        // horizontal line
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 16.0 * 6.0),
                          size: CGSize(width: size.width, height: size.height / 16.0 * 4.0)))
        // vertical line
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 22.0 * 6.0, y: 0.0),
                          size: CGSize(width: size.width / 22.0 * 4.0, height: size.height)))

        colorBlue.setFill()
        // horizontal line
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 16.0 * 7.0),
                          size: CGSize(width: size.width, height: size.height / 16.0 * 2.0)))
        // vertical line
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 22.0 * 7.0, y: 0.0),
                          size: CGSize(width: size.width / 22.0 * 2.0, height: size.height)))

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
