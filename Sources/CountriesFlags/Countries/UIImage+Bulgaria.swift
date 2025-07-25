//
//  UIImage+Bulgaria.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Bulgaria "wikipedia"
     
     Generates the flag of Bulgaria.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Bulgaria.
     */
    internal static func flagBulgaria(with size: CGSize) -> UIImage? {
        let colorWhite = UIColor.white
        let colorGreen = UIColor(red: 0.0,
                                 green: 153.0/255.0,
                                 blue: 0.0,
                                 alpha: 1.0)
        let colorRed = UIColor(red: 204.0/255.0,
                               green: 0.0,
                               blue: 0.0,
                               alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorWhite.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorGreen.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 3.0),
                          size: CGSize(width: size.width, height: size.height / 3.0)))

        colorRed.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 3.0 * 2.0),
                          size: CGSize(width: size.width, height: size.height / 3.0)))

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
