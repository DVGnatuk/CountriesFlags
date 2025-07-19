//
//  UIImage+Chad.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Chad "wikipedia"
     
     Generates the flag of Chad.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Chad.
     */
    internal static func flagChad(with size: CGSize) -> UIImage? {
        let colorIndigo = UIColor(red: 0.0,
                                  green: 32.0/255.0,
                                  blue: 91.0/255.0,
                                  alpha: 1.0)
        let colorYellow = UIColor(red: 252.0/255.0,
                                  green: 205.0/255.0,
                                  blue: 0.0,
                                  alpha: 1.0)
        let colorRed = UIColor(red: 200.0/255.0,
                               green: 16.0/255.0,
                               blue: 46.0/255.0,
                               alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorIndigo.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorYellow.setFill()
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
