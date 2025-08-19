//
//  UIImage+SaintKittsAndNevis.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Saint_Kitts_and_Nevis "wikipedia"
     
     Generates the flag of Saint Kitts and Nevis.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Saint Kitts and Nevis.
     */
    internal static func flagSaintKittsAndNevis(with size: CGSize) -> UIImage? {
        let colorGreen = UIColor(red: 0.0,
                                 green: 151.0 / 255.0,
                                 blue: 57.0 / 255.0,
                                 alpha: 1.0)
        let colorYellow = UIColor(red: 1.0,
                                  green: 209.0 / 255.0,
                                  blue: 0.0,
                                  alpha: 1.0)
        let colorBlack = UIColor.black
        let colorWhite = UIColor.white
        let colorRed = UIColor(red: 200.0 / 255.0,
                               green: 16.0 / 255.0,
                               blue: 46.0 / 255.0,
                               alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorGreen.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorRed.setFill()
        var path = UIBezierPath()
        path.move(to: CGPoint(x: 0.0, y: size.height))
        path.addLine(to: CGPoint(x: size.width, y: size.height))
        path.addLine(to: CGPoint(x: size.width, y: 0.0))
        path.close()
        path.fill()

        colorYellow.setFill()
        path = UIBezierPath()
        path.move(to: CGPoint(x: 0.0, y: size.height / 854.0 * 639.0))
        path.addLine(to: CGPoint(x: size.width / 1280.0 * 956.0, y: 0.0))
        path.addLine(to: CGPoint(x: size.width, y: 0.0))
        path.addLine(to: CGPoint(x: size.width, y: size.height / 854.0 * 216.0))
        path.addLine(to: CGPoint(x: size.width / 1280.0 * 324.0, y: size.height))
        path.addLine(to: CGPoint(x: 0.0, y: size.height))
        path.close()
        path.fill()

        colorBlack.setFill()
        path = UIBezierPath()
        path.move(to: CGPoint(x: 0.0, y: size.height / 854.0 * 699.0))
        path.addLine(to: CGPoint(x: size.width / 1280.0 * 1048.0, y: 0.0))
        path.addLine(to: CGPoint(x: size.width, y: 0.0))
        path.addLine(to: CGPoint(x: size.width, y: size.height / 854.0 * 154.0))
        path.addLine(to: CGPoint(x: size.width / 1280.0 * 232.0, y: size.height))
        path.addLine(to: CGPoint(x: 0.0, y: size.height))
        path.close()
        path.fill()

        colorWhite.setFill()
        var starSize = CGSize(width: size.width / 1280.0 * 800.0, height: size.height / 854.0 * 1200.0)
        path = UIBezierPath.star(with: starSize, radius: size.height / 854.0 * 240.0 / 2.0)
        path.rotate(to: 38.0, around: CGPoint(x: starSize.width / 2.0, y: starSize.height / 2.0))
        path.fill()

        starSize = CGSize(width: size.width / 1280.0 * 1785.0, height: size.height / 854.0 * 545.0)
        path = UIBezierPath.star(with: starSize, radius: size.height / 854.0 * 240.0 / 2.0)
        path.rotate(to: 38.0, around: CGPoint(x: starSize.width / 2.0, y: starSize.height / 2.0))
        path.fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
