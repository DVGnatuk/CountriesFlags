//
//  UIImage+BosniaAndHerzegovina.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Bosnia_and_Herzegovina"wikipedia"
     
     Generates the flag of Bosnia and Herzegovina.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Bosnia and Herzegovina.
     */
    internal static func flagBosniaAndHerzegovina(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 0.0,
                                green: 20.0 / 255.0,
                                blue: 137.0 / 255.0,
                                alpha: 1.0)
        let colorYellow = UIColor(red: 1.0,
                                  green: 205.0 / 255.0,
                                  blue: 0.0,
                                  alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorYellow.setFill()
        let path = UIBezierPath()
        path.move(to: CGPoint(x: size.width / 400.0 * 106.0, y: 0.0))
        path.addLine(to: CGPoint(x: size.width / 400.0 * 306.0, y: 0.0))
        path.addLine(to: CGPoint(x: size.width / 400.0 * 306.0, y: size.height))
        path.close()
        path.fill()

        colorWhite.setFill()
        let starRadius = size.height / 200.0 * 19.0
        let yOffset = size.height / 200.0 * 2.24264579
        for index in 0...8 {
            let starWidth: CGFloat = size.width / 400.0 * (70.0 + CGFloat(index) * 25.0)
            let starHeight: CGFloat = index == 0 ? -yOffset : size.height / 200.0 * (48.0 + CGFloat(index - 1) * 50.0)
            UIBezierPath.star(at: CGPoint(x: starWidth, y: (starHeight - yOffset) / 2.0),
                              radius: starRadius).fill()
        }

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
