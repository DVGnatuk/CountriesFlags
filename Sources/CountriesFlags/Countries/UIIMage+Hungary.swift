//
//  UIIMage+Hungary.swift
//  CountriesFlags
//

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://uk.wikipedia.org/wiki/Прапор_Угорщини "wikipedia"
     
     Generates the flag of Hungary.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Hungary.
     */
    internal static func flagHungary(with size: CGSize) -> UIImage? {
        let colorTomato = UIColor(red: 206.0/255.0,
                                  green: 41.0/255.0,
                                  blue: 57.0/255.0,
                                  alpha: 1.0)
        let colorWhite = UIColor.white
        let colorFairway = UIColor(red: 71.0/255.0,
                                   green: 112.0/255.0,
                                   blue: 80.0/255.0,
                                   alpha: 1.0)
        
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        
        colorTomato.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 3.0),
                          size: CGSize(width: size.width, height: size.height / 3.0)))
        
        colorFairway.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 3.0 * 2.0),
                          size: CGSize(width: size.width, height: size.height / 3.0)))
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
    }
}
