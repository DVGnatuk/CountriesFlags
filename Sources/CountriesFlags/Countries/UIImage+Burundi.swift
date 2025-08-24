//
//  UIImage+Burundi.swift
//  CountriesFlags
//

// swiftlint:disable function_body_length

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Burundi "wikipedia"
     
     Generates the flag of Burundi.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Burundi.
     */
    internal static func flagBurundi(with size: CGSize) -> UIImage? {
        let colorWhite = UIColor.white
        let colorGreen = UIColor(red: 67.0 / 255.0,
                                 green: 176.0 / 255.0,
                                 blue: 42.0 / 255.0,
                                 alpha: 1.0)
        let colorRed = UIColor(red: 200.0 / 255.0,
                               green: 16.0 / 255.0,
                               blue: 46.0 / 255.0,
                               alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorGreen.setFill()
        UIBezierPath.triangle(in: size, type: .leftMiddle).fill()
        UIBezierPath.triangle(in: size, type: .rightMiddle).fill()

        colorWhite.setStroke()
        let path = UIBezierPath()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: size.width, y: size.height))
        path.close()
        path.lineWidth = size.height / 150.0 * 20.0
        path.stroke()

        path.removeAllPoints()
        path.move(to: CGPoint(x: 0.0, y: size.height))
        path.addLine(to: CGPoint(x: size.width, y: 0.0))
        path.close()
        path.lineWidth = size.height / 150.0 * 20.0
        path.stroke()

        colorWhite.setFill()
        UIBezierPath(arcCenter: CGPoint(x: size.width / 2.0, y: size.height / 2.0),
                     radius: size.height / 150.0 * 85.0 / 2.0,
                     startAngle: 0.0,
                     endAngle: .pi * 2.0,
                     clockwise: true).fill()

        colorGreen.setFill()
        let topStarSize = CGSize(width: size.width, height: size.height / 150.0 * 106.0)
        let rightStarSize = CGSize(width: size.width / 250.0 * 288.0, height: size.height / 150.0 * 172.0)
        let leftStarSize = CGSize(width: size.width / 250.0 * 212.0, height: size.height / 150.0 * 172.0)
        var starRadius = size.height / 150.0 * 10.0
        UIBezierPath.star(with: topStarSize, radius: starRadius, type: .sixPointed).fill()
        UIBezierPath.star(with: rightStarSize, radius: starRadius, type: .sixPointed).fill()
        UIBezierPath.star(with: leftStarSize, radius: starRadius, type: .sixPointed).fill()

        colorRed.setFill()
        starRadius = size.height / 150.0 * 8.0
        UIBezierPath.star(with: topStarSize, radius: starRadius, type: .sixPointed).fill()
        UIBezierPath.star(with: rightStarSize, radius: starRadius, type: .sixPointed).fill()
        UIBezierPath.star(with: leftStarSize, radius: starRadius, type: .sixPointed).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif

// swiftlint:enable function_body_length
