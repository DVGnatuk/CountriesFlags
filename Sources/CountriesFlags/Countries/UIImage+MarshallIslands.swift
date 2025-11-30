//
//  UIImage+MarshallIslands.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_the_Marshall_Islands "wikipedia"
     
     Generates the flag of the Marshall Islands.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of the Marshall Islands.
     */
    internal static func flagMarshallIslands(with size: CGSize) -> UIImage {
        let colorBlue = UIColor(red: 0.0,
                                green: 56.0 / 255.0,
                                blue: 147.0 / 255.0,
                                alpha: 1.0)
        let colorFulvous = UIColor(red: 221.0 / 255.0,
                                   green: 117.0 / 255.0,
                                   blue: 0.0,
                                   alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorFulvous.setFill()
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0.0, y: size.height / 250.0 * 242.0))
        path.addLine(to: CGPoint(x: size.width, y: size.height / 250.0 * 53.0))
        path.addLine(to: CGPoint(x: size.width, y: size.height / 250.0 * 4.0))
        path.addLine(to: CGPoint(x: 0.0, y: size.height / 250.0 * 238.0))
        path.close()
        path.fill()

        colorWhite.setFill()
        path.removeAllPoints()
        path.move(to: CGPoint(x: 0.0, y: size.height / 250.0 * 246.0))
        path.addLine(to: CGPoint(x: size.width, y: size.height / 250.0 * 102.0))
        path.addLine(to: CGPoint(x: size.width, y: size.height / 250.0 * 53.0))
        path.addLine(to: CGPoint(x: 0.0, y: size.height / 250.0 * 242.0))
        path.close()
        path.fill()

        let radius = size.height / 250.0 * 77.5
        let starCenter = CGPoint(x: size.width / 475.0 * 91.27902578, y: size.height / 250.0 * 91.27902578)
        UIBezierPath.star(at: starCenter,
                          radius: radius,
                          type: .fourPointed(innerRadius: radius / 100.0 * 7.7)).fill()
        UIBezierPath.star(at: starCenter,
                          radius: size.height / 250.0 * 55.5,
                          type: .twentyFourPointed(innerRadius: size.height / 250.0 * 24.5)).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image ?? UIImage()
    }
}

#endif
