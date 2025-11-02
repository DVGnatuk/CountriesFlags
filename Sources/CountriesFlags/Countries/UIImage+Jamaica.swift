//
//  UIImage+Jamaica.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Jamaica "wikipedia"
     
     Generates the flag of Jamaica.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Jamaica.
     */
    internal static func flagJamaica(with size: CGSize) -> UIImage? {
        let colorGreen = UIColor(red: 0.0,
                                 green: 119.0 / 255.0,
                                 blue: 73.0 / 255.0,
                                 alpha: 1.0)
        let colorGold = UIColor(red: 1.0,
                                green: 184.0 / 255.0,
                                blue: 28.0 / 255.0,
                                alpha: 1.0)
        let colorBlack = UIColor.black

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorGreen.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorBlack.setFill()
        UIBezierPath.triangle(in: size, type: .leftMiddle).fill()
        UIBezierPath.triangle(in: size, type: .rightMiddle).fill()

        colorGold.setStroke()
        let path = UIBezierPath()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: size.width, y: size.height))
        path.close()
        path.lineWidth = size.height / 6.0
        path.stroke()

        path.removeAllPoints()
        path.move(to: CGPoint(x: 0.0, y: size.height))
        path.addLine(to: CGPoint(x: size.width, y: 0.0))
        path.close()
        path.lineWidth = size.height / 6.0
        path.stroke()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
