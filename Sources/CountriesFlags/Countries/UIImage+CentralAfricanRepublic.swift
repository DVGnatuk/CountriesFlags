//
//  UIImage+CentralAfricanRepublic.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_the_Central_African_Republic "wikipedia"
     
     Generates the flag of the Central African Republic.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of the Central African Republic.
     */
    internal static func flagCentralAfricanRepublic(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 0.0,
                                green: 48.0 / 255.0,
                                blue: 130.0 / 255.0,
                                alpha: 1.0)
        let colorGreen = UIColor(red: 40.0 / 255.0,
                                 green: 151.0 / 255.0,
                                 blue: 40.0 / 255.0,
                                 alpha: 1.0)
        let colorYellow = UIColor(red: 1.0,
                                  green: 206.0 / 255.0,
                                  blue: 0.0,
                                  alpha: 1.0)
        let colorRed = UIColor(red: 210.0 / 255.0,
                               green: 16.0 / 255.0,
                               blue: 52.0 / 255.0,
                               alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 40.0 * 10.0),
                          size: CGSize(width: size.width, height: size.height / 40.0 * 10.0)))

        colorGreen.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 40.0 * 20.0),
                          size: CGSize(width: size.width, height: size.height / 40.0 * 10.0)))

        colorYellow.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 40.0 * 30.0),
                          size: CGSize(width: size.width, height: size.height / 40.0 * 10.0)))

        colorRed.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 60.0 * 25.0, y: 0.0),
                          size: CGSize(width: size.width / 60.0 * 10.0, height: size.height)))

        colorYellow.setFill()
        let radius = CGFloat(size.height / 40.0 * 9.0) / 2.0
        UIBezierPath.star(with: CGSize(width: size.width / 60.0 * 20.0, height: size.height / 40.0 * 11.0),
                          radius: radius).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
