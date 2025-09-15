//
//  UIImage+Uzbekistan.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Uzbekistan "wikipedia"
     
     Generates the flag of Uzbekistan.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Uzbekistan.
     */
    internal static func flagUzbekistan(with size: CGSize) -> UIImage? {
        let colorGreen = UIColor(red: 48.0 / 255.0,
                                 green: 135.0 / 255.0,
                                 blue: 56.0 / 255.0,
                                 alpha: 1.0)
        let colorRed = UIColor(red: 238.0 / 255.0,
                               green: 22.0 / 255.0,
                               blue: 46.0 / 255.0,
                               alpha: 1.0)
        let colorBlue = UIColor(red: 48.0 / 255.0,
                                green: 129.0 / 255.0,
                                blue: 247.0 / 255.0,
                                alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorWhite.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: CGSize(width: size.width, height: size.height / 125.0 * 40.0)))

        colorGreen.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 125.0 * 85.0),
                          size: CGSize(width: size.width, height: size.height / 125.0 * 40.0)))

        colorRed.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 125.0 * 40.0),
                          size: CGSize(width: size.width, height: size.height / 125.0 * 2.5)))
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 125.0 * 82.5),
                          size: CGSize(width: size.width, height: size.height / 125.0 * 2.5)))

        colorWhite.setFill()
        UIBezierPath(arcCenter: CGPoint(x: size.width / 250.0 * 35.0, y: size.height / 125.0 * 20.0),
                     radius: size.height / 125.0 * 30.0 / 2.0,
                     startAngle: 0.0,
                     endAngle: .pi * 2.0,
                     clockwise: true).fill()

        colorBlue.setFill()
        UIBezierPath(arcCenter: CGPoint(x: size.width / 250.0 * 40.0, y: size.height / 125.0 * 20.0),
                     radius: size.height / 125.0 * 30.0 / 2.0,
                     startAngle: 0.0,
                     endAngle: .pi * 2.0,
                     clockwise: true).fill()

        colorWhite.setFill()
        let radius: CGFloat = size.height / 125.0 * 6.0 / 2.0
        for column in stride(from: 4.0, through: 0.0, by: -1.0) {
            switch column {
            case 2, 3, 4:
                let starCenter = CGPoint(x: (size.width / 250.0 * (88.0 + column * 24.0)) / 2.0,
                                         y: size.height / 125.0 * 8.0)
                UIBezierPath.star(at: starCenter, radius: radius).fill()
                fallthrough

            case 1:
                let starCenter = CGPoint(x: (size.width / 250.0 * (88.0 + column * 24.0)) / 2.0,
                                         y: size.height / 125.0 * 20.0)
                UIBezierPath.star(at: starCenter, radius: radius).fill()
                fallthrough

            case 0:
                let starCenter = CGPoint(x: (size.width / 250.0 * (88.0 + column * 24.0)) / 2.0,
                                         y: size.height / 125.0 * 32.0)
                UIBezierPath.star(at: starCenter, radius: radius).fill()

            default:
                break
            }
        }

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
