//
//  UIImage+Netherlands.swift
//  CountriesFlags
//

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_the_Netherlands "wikipedia"
     
     Generates the flag of Netherlands.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Netherlands.
     */
    internal static func flagNetherlands(with size: CGSize) -> UIImage? {
        let colorWhite = UIColor.white;
        let colorBlue = UIColor(red: 30.0/255.0,
                                green: 71.0/255.0,
                                blue: 133.0/255.0,
                                alpha: 1.0)
        let colorRed = UIColor(red: 173.0/255.0,
                               green: 29.0/255.0,
                               blue: 37.0/255.0,
                               alpha: 1.0)
        
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        
        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 3.0),
                          size: CGSize(width: size.width, height: size.height / 3.0)))
        
        colorBlue.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 3.0 * 2.0),
                          size: CGSize(width: size.width, height: size.height / 3.0)))
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
    }
}
