//
//  UIImage+Benin.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Benin"wikipedia"
     
     Generates the flag of Benin.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Benin.
     */
    internal static func flagBenin(with size: CGSize) -> UIImage? {
        let colorGreen = UIColor(red: 0.0,
                                 green: 136.0/255.0,
                                 blue: 80.0/255.0,
                                 alpha: 1.0)
        let colorYellow = UIColor(red: 252.0/255.0,
                                  green: 210.0/255.0,
                                  blue: 15.0/255.0,
                                  alpha: 1.0)
        let colorRed = UIColor(red: 233.0/255.0,
                               green: 9.0/255.0,
                               blue: 41.0/255.0,
                               alpha: 1.0)
        
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        
        colorYellow.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorRed.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 2.0),
                          size: CGSize(width: size.width, height: size.height / 2.0)))
        
        colorGreen.setFill()
        UIRectFill(CGRect(origin: .zero,
                          size: CGSize(width: size.width / 3.0, height: size.height)))
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
    }
}

#endif
