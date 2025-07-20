//
//  UIImage+Bahrain.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Bahrain "wikipedia"
     
     Generates the flag of Bahrain.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Bahrain.
     */
    internal static func flagBahrain(with size: CGSize) -> UIImage? {
        let colorRed = UIColor(red: 218.0/255.0,
                               green: 41.0/255.0,
                               blue: 28.0/255.0,
                               alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0.0, y: 0.0))
        path.addLine(to: CGPoint(x: size.width / 100.0 * 25.0, y: 0.0))
        path.addLine(to: CGPoint(x: size.width / 100.0 * 40.0, y: size.height / 60.0 * 6.0))
        path.addLine(to: CGPoint(x: size.width / 100.0 * 25.0, y: size.height / 60.0 * 12.0))
        path.addLine(to: CGPoint(x: size.width / 100.0 * 40.0, y: size.height / 60.0 * 18.0))
        path.addLine(to: CGPoint(x: size.width / 100.0 * 25.0, y: size.height / 60.0 * 24.0))
        path.addLine(to: CGPoint(x: size.width / 100.0 * 40.0, y: size.height / 60.0 * 30.0))
        path.addLine(to: CGPoint(x: size.width / 100.0 * 25.0, y: size.height / 60.0 * 36.0))
        path.addLine(to: CGPoint(x: size.width / 100.0 * 40.0, y: size.height / 60.0 * 42.0))
        path.addLine(to: CGPoint(x: size.width / 100.0 * 25.0, y: size.height / 60.0 * 48.0))
        path.addLine(to: CGPoint(x: size.width / 100.0 * 40.0, y: size.height / 60.0 * 54.0))
        path.addLine(to: CGPoint(x: size.width / 100.0 * 25.0, y: size.height))
        path.addLine(to: CGPoint(x: 0.0, y: size.height))
        path.close()
        path.fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
