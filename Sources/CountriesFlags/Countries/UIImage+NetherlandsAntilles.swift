//
//  UIImage+NetherlandsAntilles.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_the_Netherlands_Antilles "wikipedia"
     
     Generates the flag of the Netherlands Antilles.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of the Netherlands Antilles.
     */
    internal static func flagNetherlandsAntilles(with size: CGSize) -> UIImage? {
        let colorWhite = UIColor.white
        let colorBlue = UIColor(red: 1.0 / 255.0,
                                green: 45.0 / 255.0,
                                blue: 135.0 / 255.0,
                                alpha: 1.0)
        let colorRed = UIColor(red: 220.0 / 255.0,
                               green: 23.0 / 255.0,
                               blue: 29.0 / 255.0,
                               alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorWhite.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorRed.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 1280.0 * 500.0, y: 0.0),
                          size: CGSize(width: size.width / 1280.0 * 285.0, height: size.height)))

        colorBlue.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 3.0),
                          size: CGSize(width: size.width, height: size.height / 3.0)))

        colorWhite.setFill()
        let yOffset = size.height / 1280.0 * 5.0
        let starRadius = size.height / 854.0 * 38.0
        // 1 column
        var starSize = CGSize(width: size.width / 1280.0 * 900.0, height: size.height + yOffset)
        UIBezierPath.star(with: starSize, radius: starRadius).fill()
        // 2 column
        starSize = CGSize(width: size.width / 1280.0 * 1138.0, height: size.height / 854.0 * 668.0 + yOffset)
        UIBezierPath.star(with: starSize, radius: starRadius).fill()
        starSize = CGSize(width: size.width / 1280.0 * 1138.0, height: size.height / 854.0 * 1048.0 + yOffset)
        UIBezierPath.star(with: starSize, radius: starRadius).fill()
        // 3 column
        starSize = CGSize(width: size.width / 1280.0 * 1421.0, height: size.height / 854.0 * 668.0 + yOffset)
        UIBezierPath.star(with: starSize, radius: starRadius).fill()
        starSize = CGSize(width: size.width / 1280.0 * 1421.0, height: size.height / 854.0 * 1048.0 + yOffset)
        UIBezierPath.star(with: starSize, radius: starRadius).fill()
        // 4 column
        starSize = CGSize(width: size.width / 1280.0 * 1658.0, height: size.height + yOffset)
        UIBezierPath.star(with: starSize, radius: starRadius).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
