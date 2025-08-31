//
//  UIImage+Vietnam.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Vietnam "wikipedia"
     
     Generates the flag of Vietnam.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Vietnam.
     */
    internal static func flagVietnam(with size: CGSize) -> UIImage? {
        let colorYellow = UIColor.yellow
        let colorRed = UIColor(red: 218.0 / 255.0,
                               green: 37.0 / 255.0,
                               blue: 29.0 / 255.0,
                               alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorYellow.setFill()
        let radius: CGFloat = size.height * 12.0 / 20.0 / 2.0
        UIBezierPath.star(with: size, radius: radius).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
