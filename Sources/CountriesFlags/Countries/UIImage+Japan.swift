//
//  UIImage+Japan.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Japan "wikipedia"
     
     Generates the flag of Japan.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Japan.
     */
    internal static func flagJapan(with size: CGSize) -> UIImage? {
        let colorRed = UIColor(red: 188.0/255.0,
                               green: 0.0,
                               blue: 45.0/255.0,
                               alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorWhite.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        let radius = size.height * 3.0 / 5.0
        let path = UIBezierPath(ovalIn: CGRect(x: size.width / 2.0 - radius / 2.0,
                                               y: size.height / 2.0 - radius / 2.0,
                                               width: radius,
                                               height: radius))
        colorRed.setFill()
        path.fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
