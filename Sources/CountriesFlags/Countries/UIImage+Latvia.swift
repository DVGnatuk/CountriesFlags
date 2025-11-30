//
//  UIImage+Latvia.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Latvia "wikipedia"
     
     Generates the flag of Latvia.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Latvia.
     */
    internal static func flagLatvia(with size: CGSize) -> UIImage {
        let colorWhite = UIColor.white
        let colorRed = UIColor(red: 157.0 / 255.0,
                               green: 34.0 / 255.0,
                               blue: 53.0 / 255.0,
                               alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 5.0 * 2.0),
                          size: CGSize(width: size.width, height: size.height / 5.0)))

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image ?? UIImage()
    }
}

#endif
