//
//  UIImage+Morocco.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Morocco "wikipedia"
     
     Generates the flag of Morocco.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Morocco.
     */
    internal static func flagMorocco(with size: CGSize) -> UIImage? {
        let colorGreen = UIColor(red: 0.0,
                                 green: 99.0 / 255.0,
                                 blue: 65.0 / 255.0,
                                 alpha: 1.0)
        let colorRed = UIColor(red: 183.0 / 255.0,
                               green: 49.0 / 255.0,
                               blue: 44.0 / 255.0,
                               alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorGreen.setStroke()
        let path = UIBezierPath.star(at: size.midPoint, radius: size.height / 4.7)
        path.lineWidth = size.height / 4.0 * 0.095105652
        path.stroke()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
