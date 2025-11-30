//
//  UIImage+CzechRepublic.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_the_Czech_Republic "wikipedia"
     
     Generates the flag of the Czech Republic.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of the Czech Republic.
     */
    internal static func flagCzechRepublic(with size: CGSize) -> UIImage {
        let colorRed = UIColor(red: 215.0 / 255.0,
                               green: 20.0 / 255.0,
                               blue: 26.0 / 255.0,
                               alpha: 1.0)
        let colorBlue = UIColor(red: 17.0 / 255.0,
                                green: 69.0 / 255.0,
                                blue: 126.0 / 255.0,
                                alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorWhite.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorRed.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 2.0),
                          size: CGSize(width: size.width, height: size.height / 2.0)))

        colorBlue.setFill()
        UIBezierPath.triangle(in: size, type: .leftMiddle).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image ?? UIImage()
    }
}

#endif
