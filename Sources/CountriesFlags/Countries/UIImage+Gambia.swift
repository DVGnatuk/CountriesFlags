//
//  UIImage+Gambia.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Gambia"wikipedia"
     
     Generates the flag of Gambia.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Gambia.
     */
    internal static func flagGambia(with size: CGSize) -> UIImage? {
        let colorGreen = UIColor(red: 28.0/255.0,
                                 green: 119.0/255.0,
                                 blue: 40.0/255.0,
                                 alpha: 1.0)
        let colorRed = UIColor(red: 206.0/255.0,
                               green: 17.0/255.0,
                               blue: 38.0/255.0,
                               alpha: 1.0)
        let colorBlue = UIColor(red: 12.0/255.0,
                                green: 28.0/255.0,
                                blue: 140.0/255.0,
                                alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 3.0),
                          size: CGSize(width: size.width, height: size.height / 3.0)))

        colorGreen.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 3.0 * 2.0),
                          size: CGSize(width: size.width, height: size.height / 3.0)))

        colorBlue.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 18.0 * 7.0),
                          size: CGSize(width: size.width, height: size.height / 18.0 * 4.0)))

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
