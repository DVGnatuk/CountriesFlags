//
//  UIImage+Austria.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Austria "wikipedia"
     
     Generates the flag of Austria.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Austria.
     */
    internal static func flagAustria(with size: CGSize) -> UIImage {
        let colorWhite = UIColor.white
        // The Austrian law does not specify the colour shades of the flag, but in May 2018,
        // the Ministry of Defence issued a regulation specified the red on the flag is Pantone 186 C.
        let colorRed = UIColor(red: 200.0 / 255.0,
                               green: 16.0 / 255.0,
                               blue: 46.0 / 255.0,
                               alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 3.0),
                          size: CGSize(width: size.width, height: size.height / 3.0)))

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image ?? UIImage()
    }
}

#endif
