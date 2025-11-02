//
//  UIImage+UnitedStatesOfAmerica.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_the_United_States"wikipedia"
     
     Generates the flag of the United States.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of the United States.
     */
    internal static func flagUnitedStatesOfAmerica(with size: CGSize) -> UIImage? {
        // Federal Specification DDD-F-416F cloth color specifications
        let colorBlue = UIColor(red: 10.0 / 255.0,
                                green: 49.0 / 255.0,
                                blue: 97.0 / 255.0,
                                alpha: 1.0)
        let colorRed = UIColor(red: 179.0 / 255.0,
                               green: 25.0 / 255.0,
                               blue: 66.0 / 255.0,
                               alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        for index in stride(from: 1.0, through: 13.0, by: 2.0) {
            UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 13.0 * index),
                              size: CGSize(width: size.width, height: size.height / 13.0)))
        }

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero,
                          size: CGSize(width: size.width / 5.0 * 2.0, height: size.height / 13.0 * 7.0)))

        colorWhite.setFill()
        let xOffset = size.width / 5.0 * 2.0 / 12.0
        let yOffset = size.height / 13.0 * 7.0 / 10.0
        let starRadius = size.height * 0.0616 / 2.0
        for indexY in stride(from: 1.0, through: 5.0, by: 1.0) {
            for indexX in stride(from: 0.0, through: 5.0, by: 1.0) {
                let size = CGSize(width: xOffset * 2.0 + xOffset * (indexX * 2.0) * 2.0,
                                  height: yOffset * indexY * 4.0 - yOffset * 2.0)
                UIBezierPath.star(at: size.midPoint, radius: starRadius).fill()
            }
        }
        for indexY in stride(from: 1.5, through: 5.0, by: 1.0) {
            for indexX in stride(from: 0.5, through: 5.0, by: 1.0) {
                let size = CGSize(width: xOffset * 2.0 + xOffset * (indexX * 2.0) * 2.0,
                                  height: yOffset * indexY * 4.0 - yOffset * 2.0)
                UIBezierPath.star(at: size.midPoint, radius: starRadius).fill()
            }
        }

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
