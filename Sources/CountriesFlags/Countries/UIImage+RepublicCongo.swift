//
//  UIImage+RepublicCongo.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_the_Republic_of_the_Congo "wikipedia"
     
     Generates the flag of the Republic of the Congo.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of the Republic of the Congo.
     */
    internal static func flagRepublicCongo(with size: CGSize) -> UIImage? {
        let colorGreen = UIColor(red: 0.0,
                               green: 149.0/255.0,
                                blue: 67.0/255.0,
                               alpha: 1.0)
        let colorYellow = UIColor(red: 251.0/255.0,
                                  green: 222.0/255.0,
                                  blue: 74.0/255.0,
                                  alpha: 1.0)
        let colorRed = UIColor(red: 220.0/255.0,
                               green: 36.0/255.0,
                               blue: 31.0/255.0,
                               alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorYellow.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorGreen.setFill()
        let polygonGreenPath = UIBezierPath()
        polygonGreenPath.move(to: .zero)
        polygonGreenPath.addLine(to: CGPoint(x: 0.0, y: size.height))
        polygonGreenPath.addLine(to: CGPoint(x: size.width * 2.0 / 3.0, y: 0.0))
        polygonGreenPath.close()
        polygonGreenPath.fill()

        colorRed.setFill()
        let polygonYellowPath = UIBezierPath()
        polygonYellowPath.move(to: CGPoint(x: size.width, y: 0.0))
        polygonYellowPath.addLine(to: CGPoint(x: size.width, y: size.height))
        polygonYellowPath.addLine(to: CGPoint(x: size.width / 3.0, y: size.height))
        polygonYellowPath.close()
        polygonYellowPath.fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
