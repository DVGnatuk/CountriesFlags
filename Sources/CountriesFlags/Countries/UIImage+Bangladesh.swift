//
//  UIImage+Bangladesh.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Bangladesh "wikipedia"
     
     Generates the flag of Bangladesh.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Bangladesh.
     */
    internal static func flagBangladesh(with size: CGSize) -> UIImage? {
        let colorRed = UIColor(red: 244.0/255.0,
                               green: 42.0/255.0,
                               blue: 65.0/255.0,
                               alpha: 1.0)
        let colorBottleGreen = UIColor(red: 0.0,
                                       green: 106.0/255.0,
                                       blue: 78.0/255.0,
                                       alpha: 1.0)
        
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        
        colorBottleGreen.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        let radius = min(size.width, size.height) * 4.0 / 5.0
        let path = UIBezierPath(ovalIn: CGRect(x: size.width * 2.0 / 5.0 - radius / 2.0,
                                               y: size.height / 2.0 - radius / 2.0,
                                               width: radius,
                                               height: radius))
        colorRed.setFill()
        path.fill()
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
    }
}

#endif

