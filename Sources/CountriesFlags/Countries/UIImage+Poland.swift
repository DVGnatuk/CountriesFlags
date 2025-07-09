//
//  UIImage+Poland.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Poland "wikipedia"
     
     Generates the flag of Poland.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Poland.
     */
    internal static func flagPoland(with size: CGSize) -> UIImage? {
        let colorRed = UIColor(red: 220.0/255.0,
                               green: 20.0/255.0,
                               blue: 60.0/255.0,
                               alpha: 1.0)
        let colorWhite = UIColor.white
        
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        
        colorWhite.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorRed.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 2.0),
                          size: CGSize(width: size.width, height: size.height / 2.0)))
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
    }
}

#endif
