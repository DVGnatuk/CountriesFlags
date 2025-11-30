//
//  UIImage+Botswana.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Botswana"wikipedia"
     
     Generates the flag of Botswana.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Botswana.
     */
    internal static func flagBotswana(with size: CGSize) -> UIImage {
        let colorBlue = UIColor(red: 171.0 / 255.0,
                                green: 202.0 / 255.0,
                                blue: 233.0 / 255.0,
                                alpha: 1.0)
        let colorWhite = UIColor.white
        let colorBlack = UIColor.black

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 24.0 * 9.0),
                          size: CGSize(width: size.width, height: size.height / 24.0 * 6.0)))

        colorBlack.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 24.0 * 10.0),
                          size: CGSize(width: size.width, height: size.height / 24.0 * 4.0)))

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image ?? UIImage()
    }
}

#endif
