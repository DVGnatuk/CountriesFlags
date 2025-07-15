//
//  UIImage+BurkinaFaso.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Burkina_Faso "wikipedia"
     
     Generates the flag of Burkina Faso.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Burkina Faso.
     */
    internal static func flagBurkinaFaso(with size: CGSize) -> UIImage? {
        let colorRed = UIColor(red: 239.0/255.0,
                               green: 43.0/255.0,
                               blue: 45.0/255.0,
                               alpha: 1.0)
        let colorYellow = UIColor(red: 252.0/255.0,
                                  green: 209.0/255.0,
                                  blue: 22.0/255.0,
                                  alpha: 1.0)
        let colorGreen = UIColor(red: 0.0,
                                 green: 158.0/255.0,
                                 blue: 73.0/255.0,
                                 alpha: 1.0)
        
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        
        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorGreen.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0, y: size.height / 2.0),
                          size: CGSize(width: size.width, height: size.height / 2.0)))
        
        colorYellow.setFill()
        let radius = CGFloat(size.height * 7.0 / 20.0) / 2.0
        UIBezierPath.star(with: size, radius: radius).fill()
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
    }
}

#endif
