//
//  UIImage+Bahamas.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_the_Bahamas "wikipedia"
     
     Generates the flag of Bahamas.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Bahamas.
     */
    internal static func flagBahamas(with size: CGSize) -> UIImage? {
        let colorAquamarine = UIColor(red: 0.0,
                                      green: 169.0 / 255.0,
                                      blue: 206.0 / 255.0,
                                      alpha: 1.0)
        let colorYellow = UIColor(red: 1.0,
                                  green: 199.0 / 255.0,
                                  blue: 44.0 / 255.0,
                                  alpha: 1.0)
        let colorBlack = UIColor.black

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorAquamarine.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorYellow.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 3.0),
                          size: CGSize(width: size.width, height: size.height / 3.0)))

        colorBlack.setFill()
        UIBezierPath.triangle(in: size, type: .leftEquilateral).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
