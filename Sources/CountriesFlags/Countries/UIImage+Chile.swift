//
//  UIImage+Chile.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Chile "wikipedia"
     
     Generates the flag of Chile.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Chile.
     */
    internal static func flagChile(with size: CGSize) -> UIImage? {
        let colorRed = UIColor(red: 213.0 / 255.0,
                               green: 43.0 / 255.0,
                               blue: 30.0 / 255.0,
                               alpha: 1.0)
        let colorWhite = UIColor.white
        let colorBlue = UIColor(red: 0.0,
                                green: 57.0 / 255.0,
                                blue: 166.0 / 255.0,
                                alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorWhite.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorRed.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 2.0),
                          size: CGSize(width: size.width, height: size.height / 2.0)))

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero,
                          size: CGSize(width: size.height / 2.0, height: size.height / 2.0)))

        colorWhite.setFill()
        UIBezierPath.star(at: CGPoint(x: size.height / 4.0, y: size.height / 4.0),
                          radius: size.height / 6.0).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
