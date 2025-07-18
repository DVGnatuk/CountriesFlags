//
//  UIImage+Liberia.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Liberia "wikipedia"
     
     Generates the flag of Liberia.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Liberia.
     */
    internal static func flagLiberia(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 0.0,
                                green: 40.0/255.0,
                                blue: 104.0/255.0,
                                alpha: 1.0)
        let colorWhite = UIColor.white
        let colorRed = UIColor(red: 191.0/255.0,
                               green: 10.0/255.0,
                               blue: 48.0/255.0,
                               alpha: 1.0)
        
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        
        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 11.0),
                          size: CGSize(width: size.width, height: size.height / 11.0)))
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 11.0 * 3.0),
                          size: CGSize(width: size.width, height: size.height / 11.0)))
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 11.0 * 5.0),
                          size: CGSize(width: size.width, height: size.height / 11.0)))
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 11.0 * 7.0),
                          size: CGSize(width: size.width, height: size.height / 11.0)))
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 11.0 * 9.0),
                          size: CGSize(width: size.width, height: size.height / 11.0)))
        
        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero,
                          size: CGSize(width: size.height / 11.0 * 5.0, height: size.height / 11.0 * 5.0)))
        
        colorWhite.setFill()
        let radius = CGFloat(size.height / 11.0 * 3.0) / 2.0
        UIBezierPath.star(with: CGSize(width: size.height / 11.0 * 5.0, height: size.height / 11.0 * 5.0),
                        radius: radius).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
    }
}

#endif
