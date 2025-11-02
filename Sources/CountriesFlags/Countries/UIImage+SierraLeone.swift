//
//  UIImage+SierraLeone.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Sierra_Leone "wikipedia"
     
     Generates the flag of Sierra Leone.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Sierra Leone.
     */
    internal static func flagSierraLeone(with size: CGSize) -> UIImage? {
        let colorWhite = UIColor.white
        let colorBlue = UIColor(red: 0.0,
                                green: 114.0 / 255.0,
                                blue: 198.0 / 255.0,
                                alpha: 1.0)
        let colorGreen = UIColor(red: 30.0 / 255.0,
                                 green: 181.0 / 255.0,
                                 blue: 58.0 / 255.0,
                                 alpha: 1.0)
        let lineSize = CGSize(width: size.width, height: size.height / 3.0)

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorGreen.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 3.0), size: lineSize))

        colorBlue.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 3.0 * 2.0), size: lineSize))

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
