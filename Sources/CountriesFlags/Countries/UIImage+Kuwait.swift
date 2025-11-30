//
//  UIImage+Kuwait.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Kuwait "wikipedia"
     
     Generates the flag of Kuwait.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Kuwait.
     */
    internal static func flagKuwait(with size: CGSize) -> UIImage {
        let colorWhite = UIColor.white
        let colorRed = UIColor(red: 206.0 / 255.0,
                               green: 17.0 / 255.0,
                               blue: 38.0 / 255.0,
                               alpha: 1.0)
        let colorGreen = UIColor(red: 0.0,
                                 green: 122.0 / 255.0,
                                 blue: 61.0 / 255.0,
                                 alpha: 1.0)
        let colorBlack = UIColor.black
        let lineSize = CGSize(width: size.width, height: size.height / 3.0)

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorGreen.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 3.0), size: lineSize))

        colorRed.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 3.0 * 2.0), size: lineSize))

        colorBlack.setFill()
        let path = UIBezierPath()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: size.width / 12.0 * 3.0, y: size.height / 6.0 * 2.0))
        path.addLine(to: CGPoint(x: size.width / 12.0 * 3.0, y: size.height / 6.0 * 4.0))
        path.addLine(to: CGPoint(x: 0.0, y: size.height))
        path.close()
        path.fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image ?? UIImage()
    }
}

#endif
