//
//  UIImage+Suriname.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Suriname "wikipedia"
     
     Generates the flag of Suriname.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Suriname.
     */
    internal static func flagSuriname(with size: CGSize) -> UIImage? {
        let colorGreen = UIColor(red: 55.0/255.0,
                                 green: 126.0/255.0,
                                 blue: 63.0/255.0,
                                 alpha: 1.0)
        let colorWhite = UIColor.white
        let colorRed = UIColor(red: 180.0/255.0,
                               green: 10.0/255.0,
                               blue: 45.0/255.0,
                               alpha: 1.0)
        let colorYellow = UIColor(red: 236.0/255.0,
                                  green: 200.0/255.0,
                                  blue: 29.0/255.0,
                                  alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorGreen.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 20.0 * 4.0),
                          size: CGSize(width: size.width, height: size.height / 20.0 * 12.0)))
        
        colorRed.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 20.0 * 6.0),
                          size: CGSize(width: size.width, height: size.height / 20.0 * 8.0)))
        
        colorYellow.setFill()
        let radius = size.height / 20.0 * 8.0 / 2.0
        UIBezierPath.star(with: CGSize(width: size.width, height: size.height + (size.height / 20.0 * 0.381966011 * 2.0)),
                          radius: radius).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
