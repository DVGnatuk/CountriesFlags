//
//  UIImage+Armenia.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Armenia "wikipedia"
     
     Generates the flag of Armenia.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Armenia.
     */
    internal static func flagArmenia(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 0.0,
                                green: 51.0 / 255.0,
                                blue: 160.0 / 255.0,
                                alpha: 1.0)
        let colorRed = UIColor(red: 217.0 / 255.0,
                               green: 0.0,
                               blue: 18.0 / 255.0,
                               alpha: 1.0)
        let colorOrange = UIColor(red: 245.0 / 255.0,
                                  green: 168.0 / 255.0,
                                  blue: 0.0,
                                  alpha: 1.0)
        let lineSize = CGSize(width: size.width, height: size.height / 3.0)

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorBlue.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 3.0), size: lineSize))

        colorOrange.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 3.0 * 2.0), size: lineSize))

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
