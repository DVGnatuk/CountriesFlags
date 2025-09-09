//
//  UIImage+DemocraticRepublicCongo.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_the_Democratic_Republic_of_the_Congo "wikipedia"
     
     Generates the flag of the Flag of the Democratic Republic of the Congo.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of the Flag of the Democratic Republic of the Congo.
     */
    internal static func flagDemocraticRepublicCongo(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 0.0,
                                green: 127.0 / 255.0,
                                blue: 1.0,
                                alpha: 1.0)
        let colorRed = UIColor(red: 206.0 / 255.0,
                               green: 16.0 / 255.0,
                               blue: 33.0 / 255.0,
                               alpha: 1.0)
        let colorYellow = UIColor(red: 247.0 / 255.0,
                                  green: 214.0 / 255.0,
                                  blue: 24.0 / 255.0,
                                  alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorYellow.setFill()
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0.0, y: size.height))
        path.addLine(to: CGPoint(x: 0.0, y: size.height / 24.0 * 18.0))
        path.addLine(to: CGPoint(x: size.width / 33.0 * 31.0, y: 0.0))
        path.addLine(to: CGPoint(x: size.width, y: 0.0))
        path.addLine(to: CGPoint(x: size.width, y: size.height / 24.0 * 6.0))
        path.addLine(to: CGPoint(x: size.width / 33.0 * 2.0, y: size.height))
        path.close()
        path.fill()

        colorRed.setFill()
        path.removeAllPoints()
        path.move(to: CGPoint(x: 0.0, y: size.height))
        path.addLine(to: CGPoint(x: 0.0, y: size.height / 24.0 * 19.2))
        path.addLine(to: CGPoint(x: size.width, y: 0.0))
        path.addLine(to: CGPoint(x: size.width, y: size.height / 24.0 * 4.8))
        path.close()
        path.fill()

        colorYellow.setFill()
        UIBezierPath.star(at: CGPoint(x: size.height / 24.0 * 5.85, y: size.height / 24.0 * 6.25),
                          radius: size.height / 24.0 * 4.8).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
