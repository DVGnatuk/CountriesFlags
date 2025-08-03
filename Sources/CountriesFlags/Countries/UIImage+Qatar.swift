//
//  UIImage+Qatar.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Qatar "wikipedia"
     
     Generates the flag of Qatar.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Qatar.
     */
    internal static func flagQatar(with size: CGSize) -> UIImage? {
        let colorMaroon = UIColor(red: 138.0 / 255.0,
                                  green: 21.0 / 255.0,
                                  blue: 56.0 / 255.0,
                                  alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorMaroon.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        let path = UIBezierPath()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: size.width / 12600.0 * (4200.0 - 504.0), y: 0.0))
        path.addLine(to: CGPoint(x: size.width / 12600.0 * (4200.0 + 504.0), y: size.height / 4950.0 * 275.0))
        path.addLine(to: CGPoint(x: size.width / 12600.0 * (4200.0 - 504.0), y: size.height / 4950.0 * (275.0 * 2.0)))
        path.addLine(to: CGPoint(x: size.width / 12600.0 * (4200.0 + 504.0), y: size.height / 4950.0 * (275.0 * 3.0)))
        path.addLine(to: CGPoint(x: size.width / 12600.0 * (4200.0 - 504.0), y: size.height / 4950.0 * (275.0 * 4.0)))
        path.addLine(to: CGPoint(x: size.width / 12600.0 * (4200.0 + 504.0), y: size.height / 4950.0 * (275.0 * 5.0)))
        path.addLine(to: CGPoint(x: size.width / 12600.0 * (4200.0 - 504.0), y: size.height / 4950.0 * (275.0 * 6.0)))
        path.addLine(to: CGPoint(x: size.width / 12600.0 * (4200.0 + 504.0), y: size.height / 4950.0 * (275.0 * 7.0)))
        path.addLine(to: CGPoint(x: size.width / 12600.0 * (4200.0 - 504.0), y: size.height / 4950.0 * (275.0 * 8.0)))
        path.addLine(to: CGPoint(x: size.width / 12600.0 * (4200.0 + 504.0), y: size.height / 4950.0 * (275.0 * 9.0)))
        path.addLine(to: CGPoint(x: size.width / 12600.0 * (4200.0 - 504.0), y: size.height / 4950.0 * (275.0 * 10.0)))
        path.addLine(to: CGPoint(x: size.width / 12600.0 * (4200.0 + 504.0), y: size.height / 4950.0 * (275.0 * 11.0)))
        path.addLine(to: CGPoint(x: size.width / 12600.0 * (4200.0 - 504.0), y: size.height / 4950.0 * (275.0 * 12.0)))
        path.addLine(to: CGPoint(x: size.width / 12600.0 * (4200.0 + 504.0), y: size.height / 4950.0 * (275.0 * 13.0)))
        path.addLine(to: CGPoint(x: size.width / 12600.0 * (4200.0 - 504.0), y: size.height / 4950.0 * (275.0 * 14.0)))
        path.addLine(to: CGPoint(x: size.width / 12600.0 * (4200.0 + 504.0), y: size.height / 4950.0 * (275.0 * 15.0)))
        path.addLine(to: CGPoint(x: size.width / 12600.0 * (4200.0 - 504.0), y: size.height / 4950.0 * (275.0 * 16.0)))
        path.addLine(to: CGPoint(x: size.width / 12600.0 * (4200.0 + 504.0), y: size.height / 4950.0 * (275.0 * 17.0)))
        path.addLine(to: CGPoint(x: size.width / 12600.0 * (4200.0 - 504.0), y: size.height / 4950.0 * (275.0 * 18.0)))
        path.addLine(to: CGPoint(x: 0.0, y: size.height))
        path.close()
        path.fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
