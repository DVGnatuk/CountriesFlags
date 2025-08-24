//
//  UIImage+TrinidadAndTobago.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Trinidad_and_Tobago "wikipedia"
     
     Generates the flag of Trinidad and Tobago.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Trinidad and Tobago.
     */
    internal static func flagTrinidadAndTobago(with size: CGSize) -> UIImage? {
        let colorRed = UIColor(red: 206.0 / 255.0,
                               green: 17.0 / 255.0,
                               blue: 36.0 / 255.0,
                               alpha: 1.0)
        let colorWhite = UIColor.white
        let colorBlack = UIColor.black

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        let path = UIBezierPath()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: size.width / 30.0 * 6.0, y: 0.0))
        path.addLine(to: CGPoint(x: size.width, y: size.height))
        path.addLine(to: CGPoint(x: size.width / 30.0 * 24.0, y: size.height))
        path.close()
        path.fill()

        colorBlack.setFill()
        path.removeAllPoints()
        path.move(to: CGPoint(x: size.width / 30.0 * 1.0, y: 0.0))
        path.addLine(to: CGPoint(x: size.width / 30.0 * 5.0, y: 0.0))
        path.addLine(to: CGPoint(x: size.width / 30.0 * 29.0, y: size.height))
        path.addLine(to: CGPoint(x: size.width / 30.0 * 25.0, y: size.height))
        path.close()
        path.fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
