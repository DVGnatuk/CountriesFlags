//
//  UIImage+Samoa.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Samoa "wikipedia"
     
     Generates the flag of Samoa.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Samoa.
     */
    internal static func flagSamoa(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 0.0,
                                green: 43.0 / 255.0,
                                blue: 127.0 / 255.0,
                                alpha: 1.0)
        let colorWhite = UIColor.white
        let colorRed = UIColor(red: 206.0 / 255.0,
                               green: 17.0 / 255.0,
                               blue: 38.0 / 255.0,
                               alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size.halfSize))

        colorWhite.setFill()
        // left
        UIBezierPath.star(at: CGPoint(x: size.width / 288.0 * 50.0, y: size.height / 144.0 * 29.5),
                          radius: size.height / 144.0 * 17.0 / 2.0).fill()
        // top
        UIBezierPath.star(at: CGPoint(x: size.width / 288.0 * 72.0, y: size.height / 144.0 * 11.5),
                          radius: size.height / 144.0 * 17.0 / 2.0).fill()
        // right
        UIBezierPath.star(at: CGPoint(x: size.width / 288.0 * 94.5, y: size.height / 144.0 * 26.0),
                          radius: size.height / 144.0 * 16.0 / 2.0).fill()
        // bottom
        UIBezierPath.star(at: CGPoint(x: size.width / 288.0 * 72.0, y: size.height / 144.0 * 60.5),
                          radius: size.height / 144.0 * 21.0 / 2.0).fill()
        // mid-right
        UIBezierPath.star(at: CGPoint(x: size.width / 288.0 * 83.0, y: size.height / 144.0 * 41.75),
                          radius: size.height / 144.0 * 10.0 / 2.0).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
