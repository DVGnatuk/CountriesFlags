//
//  UIImage+AntiguaAndBarbuda.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Antigua_and_Barbuda "wikipedia"
     
     Generates the flag of Antigua and Barbuda.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Antigua and Barbuda.
     */
    internal static func flagAntiguaAndBarbuda(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 0.0,
                                green: 94.0 / 255.0,
                                blue: 184.0 / 255.0,
                                alpha: 1.0)
        let colorRed = UIColor(red: 239.0 / 255.0,
                               green: 51.0 / 255.0,
                               blue: 64.0 / 255.0,
                               alpha: 1.0)
        let colorOrange = UIColor(red: 1.0,
                                  green: 209.0 / 255.0,
                                  blue: 0.0,
                                  alpha: 1.0)
        let colorBlack = UIColor.black
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorBlack.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorBlue.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 46.0 * 18.0),
                          size: CGSize(width: size.width, height: size.height / 46.0 * 10.0)))

        colorWhite.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 46.0 * 28.0),
                          size: CGSize(width: size.width, height: size.height / 46.0 * 28.0)))

        colorRed.setFill()
        let path = UIBezierPath()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: size.width / 2.0, y: size.height))
        path.addLine(to: CGPoint(x: size.width, y: 0.0))
        path.addLine(to: CGPoint(x: size.width, y: size.height))
        path.addLine(to: CGPoint(x: 0.0, y: size.height))
        path.close()
        path.fill()

        // TODO: check sun
        colorOrange.setFill()
        let x0 = size.width / 2.0
        let y0 = size.height / 46.0 * 18.0
        let pathSun = UIBezierPath()
        pathSun.move(to: CGPoint(x: size.width / 2.0 + size.width / 69.0 * 15.0, y: size.height / 46.0 * 18.0))
        for index in 1...17 {
            let theta: CGFloat = (-180.0 / 16.0 * CGFloat(index)) * .pi / 180.0
            let xPos: CGFloat = index % 2 == 0 ? size.width / 69.0 * 15.0 * cos(theta)
                                               : size.width / 69.0 * 15.0 / 2.0 * cos(theta)
            let yPos: CGFloat = index % 2 == 0 ? size.width / 69.0 * 15.0 * sin(theta)
                                               : size.width / 69.0 * 15.0 / 2.0 * sin(theta)
            pathSun.addLine(to: CGPoint(x: x0 + xPos, y: y0 + yPos))
        }
        pathSun.addLine(to: CGPoint(x: size.width / 2.0 - size.width / 69.0 * 15.0, y: size.height / 46.0 * 18.0))
        pathSun.close()
        pathSun.fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
