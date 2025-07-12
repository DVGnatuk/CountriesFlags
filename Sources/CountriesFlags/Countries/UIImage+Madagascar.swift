//
//  UIImage+Madagascar.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Madagascar "wikipedia"
     
     Generates the flag of Madagascar.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Madagascar.
     */
    internal static func flagMadagascar(with size: CGSize) -> UIImage? {
        let colorWhite = UIColor.white
        let colorWarmRed = UIColor(red: 249.0/255.0,
                                   green: 66.0/255.0,
                                   blue: 58.0/255.0,
                                   alpha: 1.0)
        let colorGreen = UIColor(red: 0.0,
                                 green: 132.0/255.0,
                                 blue: 61.0/255.0,
                                 alpha: 1.0)
        
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        
        colorWarmRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorGreen.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 2.0),
                          size: CGSize(width: size.width, height: size.height / 2.0)))
        
        colorWhite.setFill()
        UIRectFill(CGRect(origin: .zero,
                          size: CGSize(width: size.width / 3.0, height: size.height)))
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
    }
}

#endif
