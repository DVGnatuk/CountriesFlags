//
//  UIImage+Italy.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Italy "wikipedia"
     
     Generates the flag of Italy.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Italy.
     */
    internal static func flagItaly(with size: CGSize) -> UIImage? {
        let colorGreen = UIColor(red: 0.0,
                                 green: 140.0/255.0,
                                 blue: 69.0/255.0,
                                 alpha: 1.0)
        let colorWhite = UIColor(red: 244.0/255.0,
                                 green: 245.0/255.0,
                                 blue: 240.0/255.0,
                                 alpha: 1.0)
        let colorRed = UIColor(red: 205.0/255.0,
                               green: 33.0/255.0,
                               blue: 41.0/255.0,
                               alpha: 1.0)
        
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        
        colorGreen.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 3.0, y: 0.0),
                          size: CGSize(width: size.width / 3.0, height: size.height)))
        
        colorRed.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 3.0 * 2.0, y: 0.0),
                          size: CGSize(width: size.width / 3.0, height: size.height)))
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
    }
}

#endif
