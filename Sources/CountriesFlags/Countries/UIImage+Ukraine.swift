//
//  UIImage+Ukraine.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Ukraine "wikipedia"
     
     Generates the flag of Ukraine.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Ukraine.
     */
    internal static func flagUkraine(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 0.0,
                                green: 87.0/255.0,
                                blue: 184.0/255.0,
                                alpha: 1.0)
        let colorYellow = UIColor(red: 1.0,
                                  green: 215.0/255.0,
                                  blue: 0.0,
                                  alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorYellow.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 2.0),
                          size: CGSize(width: size.width, height: size.height / 2.0)))

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
