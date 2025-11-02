//
//  UIImage+SouthAfrica.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_South_Africa "wikipedia"
     
     Generates the flag of South Africa.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of South Africa.
     */
    internal static func flagSouthAfrica(with size: CGSize) -> UIImage? {
        let colorGreen = UIColor(red: 0.0,
                                 green: 122.0 / 255.0,
                                 blue: 77.0 / 255.0,
                                 alpha: 1.0)
        let colorBlue = UIColor(red: 0.0,
                                green: 35.0 / 255.0,
                                blue: 149.0 / 255.0,
                                alpha: 1.0)
        let colorRed = UIColor(red: 222.0 / 255.0,
                               green: 56.0 / 255.0,
                               blue: 49.0 / 255.0,
                               alpha: 1.0)
        let colorGold = UIColor(red: 1.0,
                                green: 182.0 / 255.0,
                                blue: 18.0 / 255.0,
                                alpha: 1.0)
        let colorWhite = UIColor.white
        let colorBlack = UIColor.black

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorGreen.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorGold.setFill()
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0.0, y: size.height / 854.0 * 102.0))
        path.addLine(to: CGPoint(x: size.width / 100.0 * 38.0, y: size.height / 2.0))
        path.addLine(to: CGPoint(x: 0.0, y: size.height / 854.0 * 751.0))
        path.close()
        path.fill()

        colorBlack.setFill()
        path.removeAllPoints()
        path.move(to: CGPoint(x: 0.0, y: size.height / 854.0 * 171.0))
        path.addLine(to: CGPoint(x: size.width / 100.0 * 30.0, y: size.height / 2.0))
        path.addLine(to: CGPoint(x: 0.0, y: size.height / 854.0 * 683.0))
        path.close()
        path.fill()

        colorWhite.setFill()
        path.removeAllPoints()
        path.move(to: CGPoint(x: size.width / 1280.0 * 155.0, y: 0.0))
        path.addLine(to: CGPoint(x: size.width / 1280.0 * 665.0, y: size.height / 854.0 * 341.0))
        path.addLine(to: CGPoint(x: size.width, y: size.height / 854.0 * 341.0))
        path.addLine(to: CGPoint(x: size.width, y: 0.0))
        path.close()
        path.fill()

        path.removeAllPoints()
        path.move(to: CGPoint(x: size.width / 1280.0 * 155.0, y: size.height))
        path.addLine(to: CGPoint(x: size.width / 1280.0 * 665.0, y: size.height / 854.0 * 512.0))
        path.addLine(to: CGPoint(x: size.width, y: size.height / 854.0 * 512.0))
        path.addLine(to: CGPoint(x: size.width, y: size.height))
        path.close()
        path.fill()

        colorRed.setFill()
        path.removeAllPoints()
        path.move(to: CGPoint(x: size.width / 1280.0 * 259.0, y: 0.0))
        path.addLine(to: CGPoint(x: size.width / 1280.0 * 682.0, y: size.height / 854.0 * 284.0))
        path.addLine(to: CGPoint(x: size.width, y: size.height / 854.0 * 284.0))
        path.addLine(to: CGPoint(x: size.width, y: 0.0))
        path.close()
        path.fill()

        colorBlue.setFill()
        path.removeAllPoints()
        path.move(to: CGPoint(x: size.width / 1280.0 * 259.0, y: size.height))
        path.addLine(to: CGPoint(x: size.width / 1280.0 * 682.0, y: size.height / 854.0 * 569.0))
        path.addLine(to: CGPoint(x: size.width, y: size.height / 854.0 * 569.0))
        path.addLine(to: CGPoint(x: size.width, y: size.height))
        path.close()
        path.fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
