//
//  UIImage+Luxembourg.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Luxembourg "wikipedia"
     
     Generates the flag of Luxembourg.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Luxembourg.
     */
    internal static func flagLuxembourg(with size: CGSize) -> UIImage? {
        let colorWhite = UIColor.white
        let colorCelestialBlue = UIColor(red: 0.0,
                                         green: 163.0/255.0,
                                         blue: 224.0/255.0,
                                         alpha: 1.0)
        let colorRed = UIColor(red: 239.0/255.0,
                               green: 51.0/255.0,
                               blue: 64.0/255.0,
                               alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 3.0),
                          size: CGSize(width: size.width, height: size.height / 3.0)))

        colorCelestialBlue.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 3.0 * 2.0),
                          size: CGSize(width: size.width, height: size.height / 3.0)))

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
