//
//  UIImage+Romania.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Romania "wikipedia"
     
     Generates the flag of Romania.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Romania.
     */
    internal static func flagRomania(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 0.0,
                              green: 43.0/255.0,
                               blue: 127.0/255.0,
                              alpha: 1.0)
        let colorYellow = UIColor(red: 252.0/255.0,
                                  green: 209.0/255.0,
                                  blue: 22.0/255.0,
                                  alpha: 1.0)
        let colorRed = UIColor(red: 206.0/255.0,
                               green: 17.0/255.0,
                               blue: 38.0/255.0,
                               alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorBlue.setFill()
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
