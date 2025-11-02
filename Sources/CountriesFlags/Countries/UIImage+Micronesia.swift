//
//  UIImage+Micronesia.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_the_Federated_States_of_Micronesia "wikipedia"
     
     Generates the flag of the Federated States of Micronesia.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of the Federated States of Micronesia.
     */
    internal static func flagMicronesia(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 117.0 / 255.0,
                                green: 178.0 / 255.0,
                                blue: 221.0 / 255.0,
                                alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        let starCenter = CGPoint(x: size.width / 2.0, y: size.height / 5.0)
        let starRadius = size.height / 5.0 / 2.0
        let rotatePoint = CGPoint(x: size.width / 2.0, y: size.height / 2.0)
        for angle in stride(from: 0.0, through: 270.0, by: 90.0) {
            let path = UIBezierPath.star(at: starCenter, radius: starRadius)
            path.rotate(to: angle, around: rotatePoint)
            path.fill()
        }

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
