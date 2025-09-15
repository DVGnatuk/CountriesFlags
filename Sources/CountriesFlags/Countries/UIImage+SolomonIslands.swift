//
//  UIImage+SolomonIslands.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Solomon_Islands "wikipedia"
     
     Generates the flag of Solomon Islands.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Solomon Islands.
     */
    internal static func flagSolomonIslands(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 0.0,
                                green: 81.0 / 255.0,
                                blue: 186.0 / 255.0,
                                alpha: 1.0)
        let colorYellow = UIColor(red: 252.0 / 255.0,
                                  green: 209.0 / 255.0,
                                  blue: 22.0 / 255.0,
                                  alpha: 1.0)
        let colorGreen = UIColor(red: 33.0 / 255.0,
                                 green: 91.0 / 255.0,
                                 blue: 51.0 / 255.0,
                                 alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorGreen.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorBlue.setFill()
        let path = UIBezierPath()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: 0.0, y: size.height))
        path.addLine(to: CGPoint(x: size.width, y: 0.0))
        path.close()
        path.fill()

        colorYellow.setStroke()
        path.removeAllPoints()
        path.move(to: CGPoint(x: size.width, y: 0.0))
        path.addLine(to: CGPoint(x: 0.0, y: size.height))
        path.close()
        path.lineWidth = size.width / 100.0 * 4.37
        path.stroke()

        colorWhite.setFill()
        let starRadius = size.height / 100.0 * 10.0
        // center star
        UIBezierPath.star(at: CGPoint(x: size.width / 100.0 * 17.5, y: size.height / 100.0 * 30.0),
                          radius: starRadius).fill()
        // top left star
        UIBezierPath.star(at: CGPoint(x: size.width / 100.0 * 7.65, y: size.height / 100.0 * 13.0),
                          radius: starRadius).fill()
        // bottom left star
        UIBezierPath.star(at: CGPoint(x: size.width / 100.0 * 7.65, y: size.height / 100.0 * 47.0),
                          radius: starRadius).fill()
        // top right star
        UIBezierPath.star(at: CGPoint(x: size.width / 100.0 * 27.35, y: size.height / 100.0 * 13.0),
                          radius: starRadius).fill()
        // top right star
        UIBezierPath.star(at: CGPoint(x: size.width / 100.0 * 27.35, y: size.height / 100.0 * 47.0),
                          radius: starRadius).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
