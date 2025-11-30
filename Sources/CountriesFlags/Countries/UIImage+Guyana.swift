//
//  UIImage+Guyana.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Guyana "wikipedia"
     
     Generates the flag of Guyana.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Guyana.
     */
    internal static func flagGuyana(with size: CGSize) -> UIImage {
        let colorRed = UIColor(red: 239.0 / 255.0,
                               green: 51.0 / 255.0,
                               blue: 64.0 / 255.0,
                               alpha: 1.0)
        let colorYellow = UIColor(red: 1.0,
                                  green: 209.0 / 255.0,
                                  blue: 0.0,
                                  alpha: 1.0)
        let colorGreen = UIColor(red: 0.0,
                                 green: 151.0 / 255.0,
                                 blue: 57.0 / 255.0,
                                 alpha: 1.0)
        let colorBlack = UIColor.black
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorGreen.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        UIBezierPath.triangle(in: CGSize(width: size.width * 2.0, height: size.height),
                              type: .leftMiddle).fill()

        colorYellow.setFill()
        var triangleSize = CGSize(width: size.width / 1920.0 * 3570.0, height: size.height / 1152.0 * 1078.0)
        var path = UIBezierPath.triangle(in: triangleSize, type: .leftMiddle)
        path.translate(to: CGPoint(x: 0.0, y: size.height / 1152.0 * 37.0))
        path.fill()

        colorBlack.setFill()
        UIBezierPath.triangle(in: size, type: .leftMiddle).fill()

        colorRed.setFill()
        triangleSize = CGSize(width: size.width / 1920.0 * 1772.0, height: size.height / 1152.0 * 1062.0)
        path = UIBezierPath.triangle(in: triangleSize, type: .leftMiddle)
        path.translate(to: CGPoint(x: 0.0, y: size.height / 1152.0 * 43.0))
        path.fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image ?? UIImage()
    }
}

#endif
