//
//  UIImage+Senegal.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Senegal "wikipedia"
     
     Generates the flag of Senegal.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Senegal.
     */
    internal static func flagSenegal(with size: CGSize) -> UIImage? {
        let colorGreen = UIColor(red: 0.0,
                               green: 133.0/255.0,
                                blue: 63.0/255.0,
                               alpha: 1.0)
        let colorYellow = UIColor(red: 253.0/255.0,
                                  green: 239.0/255.0,
                                  blue: 66.0/255.0,
                                  alpha: 1.0)
        let colorRed = UIColor(red: 227.0/255.0,
                               green: 27.0/255.0,
                               blue: 35.0/255.0,
                               alpha: 1.0)
        
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        
        colorGreen.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorYellow.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 3.0, y: 0.0),
                          size: CGSize(width: size.width / 3.0, height: size.height)))
        
        colorRed.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 3.0 * 2.0, y: 0.0),
                          size: CGSize(width: size.width / 3.0, height: size.height)))
        
        colorGreen.setFill()
        let polygonPath = UIBezierPath()

        let xCenter: CGFloat = size.width / 2.0
        let yCenter: CGFloat = size.height / 2.0
        let radius = CGFloat(size.height * 5.0 / 12.0) / 2.0
        let flip: CGFloat = -1.0 // use this to flip the figure 1.0 or -1.0
        let polySide = CGFloat(5)
        let theta = 2.0 * Double.pi * Double(2.0 / polySide)

        polygonPath.move(to: CGPoint(x: xCenter, y: radius * flip + yCenter))

        for i in 1..<Int(polySide) {
            let x: CGFloat = radius * CGFloat( sin(Double(i) * theta) )
            let y: CGFloat = radius * CGFloat( cos(Double(i) * theta) )
            polygonPath.addLine(to: CGPoint(x: x + xCenter, y: y * flip + yCenter))
        }

        polygonPath.close()
        polygonPath.fill()
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
    }
}

#endif
