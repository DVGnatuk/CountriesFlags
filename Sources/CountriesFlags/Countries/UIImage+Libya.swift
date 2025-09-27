//
//  UIImage+Libya.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://simple.wikipedia.org/wiki/Flag_of_Libya "wikipedia"
     
     Generates the flag of Libya.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Libya.
     */
    internal static func flagLibya(with size: CGSize) -> UIImage? {
        let colorGreen = UIColor(red: 35.0 / 255.0,
                                 green: 158.0 / 255.0,
                                 blue: 70.0 / 255.0,
                                 alpha: 1.0)
        let colorRed = UIColor(red: 231.0 / 255.0,
                               green: 0.0,
                               blue: 19.0 / 255.0,
                               alpha: 1.0)
        let colorWhite = UIColor.white
        let colorBlack = UIColor.black

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorBlack.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero,
                          size: CGSize(width: size.width, height: size.height / 4.0)))

        colorGreen.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 4.0 * 3.0),
                          size: CGSize(width: size.width, height: size.height / 4.0)))

        colorWhite.setFill()
        UIBezierPath(arcCenter: size.midPoint,
                     radius: size.height / 8.0,
                     startAngle: 0.0,
                     endAngle: .pi * 2.0,
                     clockwise: true).fill()

        colorBlack.setFill()
        UIBezierPath(arcCenter: CGPoint(x: size.width * 0.512, y: size.height / 2.0),
                     radius: size.height / 9.15,
                     startAngle: 0.0,
                     endAngle: .pi * 2.0,
                     clockwise: true).fill()

        colorWhite.setFill()
        let starCenter = CGPoint(x: size.width * 0.577, y: size.height / 2.0)
        let path = UIBezierPath.star(at: starCenter, radius: size.height / 11.0)
        path.rotate(to: -18.0, around: starCenter)
        path.fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
