//
//  UIImage+Colombia.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Colombia "wikipedia"
     
     Generates the flag of Colombia.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Colombia.
     */
    internal static func flagColombia(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 0.0,
                                green: 48.0/255.0,
                                blue: 135.0/255.0,
                                alpha: 1.0)
        let colorYellow = UIColor(red: 255.0/255.0,
                                  green: 205.0/255.0,
                                  blue: 0.0,
                                  alpha: 1.0)
        let colorRed = UIColor(red: 200.0/255.0,
                               green: 16.0/255.0,
                               blue: 16.0/255.0,
                               alpha: 1.0)
        
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        
        colorYellow.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorBlue.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 2.0),
                          size: CGSize(width: size.width, height: size.height / 2.0)))
        
        colorRed.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 4.0 * 3.0),
                          size: CGSize(width: size.width, height: size.height / 2.0 * 4.0)))
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
    }
}

#endif
