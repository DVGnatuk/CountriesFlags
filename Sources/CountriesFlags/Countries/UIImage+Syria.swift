//
//  UIImage+Syria.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Syria "wikipedia"
     
     Generates the flag of Syria.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Syria.
     */
    internal static func flagSyrianArabRepublic(with size: CGSize) -> UIImage? {
        let colorRed = UIColor(red: 206.0 / 255.0,
                               green: 17.0 / 255.0,
                               blue: 38.0 / 255.0,
                               alpha: 1.0)
        let colorGreen = UIColor(red: 0.0,
                                 green: 122.0 / 255.0,
                                 blue: 61.0 / 255.0,
                                 alpha: 1.0)
        let colorWhite = UIColor.white
        let colorBlack = UIColor.black

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorWhite.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorGreen.setFill()
        UIRectFill(CGRect(origin: .zero,
                          size: CGSize(width: size.width, height: size.height / 3.0)))

        colorBlack.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 3.0 * 2.0),
                          size: CGSize(width: size.width, height: size.height / 3.0)))

        colorRed.setFill()
        let starRadius = size.height / 6.0 * 0.825
        UIBezierPath.star(at: CGPoint(x: size.width / 4.0, y: (size.height + size.height / 6.0 * 0.15) / 2.0),
                          radius: starRadius).fill()
        UIBezierPath.star(at: CGPoint(x: size.width / 2.0, y: (size.height + size.height / 6.0 * 0.15) / 2.0),
                          radius: starRadius).fill()
        UIBezierPath.star(at: CGPoint(x: size.width * 0.75, y: (size.height + size.height / 6.0 * 0.15) / 2.0),
                          radius: starRadius).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
