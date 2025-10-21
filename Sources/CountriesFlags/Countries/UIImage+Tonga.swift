//
//  UIImage+Tonga.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Tonga "wikipedia"
     
     Generates the flag of Tonga.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Tonga.
     */
    internal static func flagTonga(with size: CGSize) -> UIImage? {
        let colorRed = UIColor(red: 193.0 / 255.0,
                               green: 0.0,
                               blue: 0.0,
                               alpha: 1.0)
        let colorWhite = UIColor.white
        let lineSize = CGSize(width: size.width / 48.0 * 20.0, height: size.height / 2.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: 0.0), size: lineSize))

        colorRed.setFill()
        UIBezierPath.plus(in: lineSize, with: size.width / 48.0 * 3.0).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
