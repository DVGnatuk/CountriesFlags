//
//  UIImage+Denmark.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Denmark "wikipedia"
     
     Generates the flag of Denmark.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Denmark.
     */
    internal static func flagDenmark(with size: CGSize) -> UIImage? {
        let colorRed = UIColor(red: 200.0 / 255.0,
                               green: 16.0 / 255.0,
                               blue: 46.0 / 255.0,
                               alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        // horizontal line
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 28.0 * 12.0),
                          size: CGSize(width: size.width, height: size.height / 28.0 * 4.0)))
        // vertical line
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 37.0 * 12.0, y: 0.0),
                          size: CGSize(width: size.width / 37.0 * 4.0, height: size.height)))

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
