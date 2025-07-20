//
//  UIImage+Ireland.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Ireland "wikipedia"
     
     Generates the flag of Ireland.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Ireland.
     */
    internal static func flagIreland(with size: CGSize) -> UIImage? {
        let colorGreen = UIColor(red: 22.0/255.0,
                                 green: 155.0/255.0,
                                 blue: 98.0/255.0,
                                 alpha: 1.0)
        let colorWhite = UIColor.white
        let colorRed = UIColor(red: 1.0,
                               green: 136.0/255.0,
                               blue: 62.0/255.0,
                               alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorGreen.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 3.0, y: 0.0),
                          size: CGSize(width: size.width / 3.0, height: size.height)))

        colorRed.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 3.0 * 2.0, y: 0.0),
                          size: CGSize(width: size.width / 3.0, height: size.height)))

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
