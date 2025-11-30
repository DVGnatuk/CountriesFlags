//
//  UIImage+Myanmar.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Myanmar "wikipedia"
     
     Generates the flag of Myanmar.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Myanmar.
     */
    internal static func flagMyanmar(with size: CGSize) -> UIImage {
        let colorGreen = UIColor(red: 52.0 / 255.0,
                                 green: 178.0 / 255.0,
                                 blue: 51.0 / 255.0,
                                 alpha: 1.0)
        let colorRed = UIColor(red: 234.0 / 255.0,
                               green: 40.0 / 255.0,
                               blue: 57.0 / 255.0,
                               alpha: 1.0)
        let colorYellow = UIColor(red: 254.0 / 255.0,
                                  green: 203.0 / 255.0,
                                  blue: 0.0,
                                  alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorYellow.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorGreen.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 3.0),
                          size: CGSize(width: size.width, height: size.height / 3.0)))

        colorRed.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 3.0 * 2.0),
                          size: CGSize(width: size.width, height: size.height / 3.0)))

        colorWhite.setFill()
        UIBezierPath.star(at: CGPoint(x: size.width / 2.0, y: (size.height + (size.height / 6.0 * 0.422291236)) / 2.0),
                          radius: size.height / 12.0 * 8.844582472 / 2.0).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image ?? UIImage()
    }
}

#endif
