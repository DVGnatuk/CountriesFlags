//
//  UIImage+Martinique.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Martinique "wikipedia"
     
     Generates the flag of Martinique.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Martinique.
     */
    internal static func flagMartinique(with size: CGSize) -> UIImage {
        let colorRed = UIColor(red: 239.0 / 255.0,
                               green: 25.0 / 255.0,
                               blue: 35.0 / 255.0,
                               alpha: 1.0)
        let colorGreen = UIColor(red: 0.0,
                                 green: 166.0 / 255.0,
                                 blue: 80.0 / 255.0,
                                 alpha: 1.0)
        let colorBlack = UIColor(red: 35.0 / 255.0,
                                 green: 31.0 / 255.0,
                                 blue: 30.0 / 255.0,
                                 alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorGreen.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorBlack.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 2.0),
                          size: CGSize(width: size.width, height: size.height / 2.0)))

        colorRed.setFill()
        UIBezierPath.triangle(in: size, type: .leftMiddle).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image ?? UIImage()
    }
}

#endif
