//
//  UIImage+CapeVerde.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Cape_Verde "wikipedia"
     
     Generates the flag of Cape Verde.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Cape Verde.
     */
    internal static func flagCapeVerde(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 0.0,
                                green: 56.0 / 255.0,
                                blue: 147.0 / 255.0,
                                alpha: 1.0)
        let colorWhite = UIColor.white
        let colorRed = UIColor(red: 207.0 / 255.0,
                               green: 32.0 / 255.0,
                               blue: 39.0 / 255.0,
                               alpha: 1.0)
        let colorYellow = UIColor(red: 247.0 / 255.0,
                                  green: 209.0 / 255.0,
                                  blue: 22.0 / 255.0,
                                  alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 12.0 * 6.0),
                          size: CGSize(width: size.width, height: size.height / 12.0 * 3.0)))

        colorRed.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 12.0 * 7.0),
                          size: CGSize(width: size.width, height: size.height / 12.0)))
    
        colorYellow.setFill()
        let radius = CGFloat(size.height / 12.0) / 2.0
        let yOffset = size.height / 12.0 * 0.1
        // 1 column
        UIBezierPath.star(with: CGSize(width: size.width / 80.0 * 37.5, height: size.height / 12.0 * 13.0 + yOffset),
                          radius: radius).fill()
        UIBezierPath.star(with: CGSize(width: size.width / 80.0 * 37.5, height: size.height / 12.0 * 17.0 + yOffset),
                          radius: radius).fill()
        // 2 column
        UIBezierPath.star(with: CGSize(width: size.width / 80.0 * 46.1, height: size.height / 12.0 * 10.0 + yOffset),
                          radius: radius).fill()
        UIBezierPath.star(with: CGSize(width: size.width / 80.0 * 46.1, height: size.height / 12.0 * 19.7 + yOffset),
                          radius: radius).fill()
        // 3 column
        UIBezierPath.star(with: CGSize(width: size.width / 80.0 * 59.8, height: size.height / 12.0 * 8.9 + yOffset),
                          radius: radius).fill()
        UIBezierPath.star(with: CGSize(width: size.width / 80.0 * 59.8, height: size.height / 12.0 * 20.9 + yOffset),
                          radius: radius).fill()
        // 4 column
        UIBezierPath.star(with: CGSize(width: size.width / 80.0 * 73.7, height: size.height / 12.0 * 10.0 + yOffset),
                          radius: radius).fill()
        UIBezierPath.star(with: CGSize(width: size.width / 80.0 * 73.7, height: size.height / 12.0 * 19.7 + yOffset),
                          radius: radius).fill()
        // 5 column
        UIBezierPath.star(with: CGSize(width: size.width / 80.0 * 82.0, height: size.height / 12.0 * 13.0 + yOffset),
                          radius: radius).fill()
        UIBezierPath.star(with: CGSize(width: size.width / 80.0 * 82.0, height: size.height / 12.0 * 17.0 + yOffset),
                          radius: radius).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
