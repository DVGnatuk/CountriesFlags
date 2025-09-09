//
//  UIImage+Panama.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Panama "wikipedia"
     
     Generates the flag of Panama.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Panama.
     */
    internal static func flagPanama(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 1.0 / 255.0,
                                green: 30.0 / 255.0,
                                blue: 86.0 / 255.0,
                                alpha: 1.0)
        let colorRed = UIColor(red: 219.0 / 255.0,
                               green: 10.0 / 255.0,
                               blue: 19.0 / 255.0,
                               alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorWhite.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorRed.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 2.0, y: 0.0),
                          size: size.halfSize))

        colorBlue.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 2.0),
                          size: size.halfSize))

        let radius = size.height / 8.0 * 1.111145618
        let xDelta = size.height / 8.0 * 0.105572809
        UIBezierPath.star(at: CGPoint(x: size.width / 4.0, y: (size.height / 2.0 + xDelta * 2.0) / 2.0),
                          radius: radius).fill()
        colorRed.setFill()
        UIBezierPath.star(at: CGPoint(x: size.width * 0.75, y: (size.height * 1.5 + xDelta * 2.0) / 2.0),
                          radius: radius).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
