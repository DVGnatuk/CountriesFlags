//
//  UIImage+TimorLeste.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Timor-Leste "wikipedia"
     
     Generates the flag of Timor-Leste.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Timor-Leste.
     */
    internal static func flagTimorLeste(with size: CGSize) -> UIImage? {
        let colorRed = UIColor(red: 218.0 / 255.0,
                               green: 41.0 / 255.0,
                               blue: 28.0 / 255.0,
                               alpha: 1.0)
        let colorWhite = UIColor.white
        let colorBlack = UIColor.black
        let colorYellow = UIColor(red: 1.0,
                                  green: 199.0 / 255.0,
                                  blue: 44.0 / 255.0,
                                  alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorYellow.setFill()
        UIBezierPath.triangle(in: size, type: .leftMiddle).fill()

        colorBlack.setFill()
        UIBezierPath.triangle(in: CGSize(width: size.width / 36.0 * 24.0, height: size.height),
                              type: .leftMiddle).fill()

        colorWhite.setFill()
        let radius = CGFloat(size.height / 18.0 * 6.0) / 2.0
        let path = UIBezierPath.star(with: CGSize(width: size.width / 36.0 * 8.0, height: size.height),
                                     radius: radius)
        path.rotate(to: -atan(4.0 / 9.0) * 180.0 / .pi,
                    around: CGPoint(x: size.width / 36.0 * 8.0 / 2.0, y: size.height / 2.0))
        path.fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
