//
//  UIImage+Nigeria.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Nigeria "wikipedia"
     
     Generates the flag of Nigeria.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Nigeria.
     */
    internal static func flagNigeria(with size: CGSize) -> UIImage {
        let colorWhite = UIColor.white
        let colorGreen = UIColor(red: 0.0,
                                 green: 135.0 / 255.0,
                                 blue: 81.0 / 255.0,
                                 alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorGreen.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 3.0, y: 0.0),
                          size: CGSize(width: size.width / 3.0, height: size.height)))

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image ?? UIImage()
    }
}

#endif
