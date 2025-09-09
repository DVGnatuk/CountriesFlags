//
//  UIImage+GuineaBissau.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Guinea-Bissau "wikipedia"
     
     Generates the flag of Guinea-Bissau.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Guinea-Bissau.
     */
    internal static func flagGuineaBissau(with size: CGSize) -> UIImage? {
        let colorRed = UIColor(red: 206.0 / 255.0,
                               green: 17.0 / 255.0,
                               blue: 38.0 / 255.0,
                               alpha: 1.0)
        let colorYellow = UIColor(red: 252.0 / 255.0,
                                  green: 209.0 / 255.0,
                                  blue: 22.0 / 255.0,
                                  alpha: 1.0)
        let colorGreen = UIColor(red: 0.0,
                                 green: 158.0 / 255.0,
                                 blue: 73.0 / 255.0,
                                 alpha: 1.0)
        let colorBlack = UIColor.black

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorYellow.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorGreen.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 2.0),
                          size: CGSize(width: size.width, height: size.height / 2.0)))

        colorRed.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: 0.0),
                          size: CGSize(width: size.width / 3.0, height: size.height)))

        colorBlack.setFill()
        let radius = CGFloat(size.height / 3.0) / 2.0
        UIBezierPath.star(at: CGPoint(x: size.width / 6.0, y: size.height / 2.0),
                          radius: radius).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
