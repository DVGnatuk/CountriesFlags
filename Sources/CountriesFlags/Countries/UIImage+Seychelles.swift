//
//  UIImage+Seychelles.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Seychelles "wikipedia"
     
     Generates the flag of Seychelles.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Seychelles.
     */
    internal static func flagSeychelles(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 0.0,
                                green: 61.0/255.0,
                                blue: 136.0/255.0,
                                alpha: 1.0)
        let colorYellow = UIColor(red: 252.0/255.0,
                                  green: 217.0/255.0,
                                  blue: 85.0/255.0,
                                  alpha: 1.0)
        let colorRed = UIColor(red: 215.0/255.0,
                               green: 35.0/255.0,
                               blue: 35.0/255.0,
                               alpha: 1.0)
        let colorWhite = UIColor.white
        let colorGreen = UIColor(red: 0.0,
                                 green: 123.0/255.0,
                                 blue: 58.0/255.0,
                                 alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))
        
        colorYellow.setFill()
        var path = UIBezierPath()
        path.move(to: CGPoint(x: size.width / 6.0 * 2.0, y: 0.0))
        path.addLine(to: CGPoint(x: size.width / 6.0 * 4.0, y: 0.0))
        path.addLine(to: CGPoint(x: 0.0, y: size.height))
        path.close()
        path.fill()
        
        colorRed.setFill()
        path = UIBezierPath()
        path.move(to: CGPoint(x: size.width / 6.0 * 4.0, y: 0.0))
        path.addLine(to: CGPoint(x: size.width, y: 0.0))
        path.addLine(to: CGPoint(x: size.width, y: size.height / 3.0))
        path.addLine(to: CGPoint(x: 0.0, y: size.height))
        path.close()
        path.fill()
        
        colorWhite.setFill()
        path = UIBezierPath()
        path.move(to: CGPoint(x: size.width, y: size.height / 3.0))
        path.addLine(to: CGPoint(x: size.width, y: size.height / 3.0 * 2.0))
        path.addLine(to: CGPoint(x: 0.0, y: size.height))
        path.close()
        path.fill()
        
        colorGreen.setFill()
        path = UIBezierPath()
        path.move(to: CGPoint(x: size.width, y: size.height / 3.0 * 2.0))
        path.addLine(to: CGPoint(x: size.width, y: size.height))
        path.addLine(to: CGPoint(x: 0.0, y: size.height))
        path.close()
        path.fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
