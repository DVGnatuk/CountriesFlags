//
//  UIImage+Ghana.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Ghana "wikipedia"
     
     Generates the flag of Ghana.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Ghana.
     */
    internal static func flagGhana(with size: CGSize) -> UIImage? {
        let colorRed = UIColor(red: 207.0 / 255.0,
                               green: 9.0 / 255.0,
                               blue: 33.0 / 255.0,
                               alpha: 1.0)
        let colorYellow = UIColor(red: 252.0 / 255.0,
                                  green: 210.0 / 255.0,
                                  blue: 15.0 / 255.0,
                                  alpha: 1.0)
        let colorGreen = UIColor(red: 0.0,
                                 green: 107.0 / 255.0,
                                 blue: 61.0 / 255.0,
                                 alpha: 1.0)
        let colorBlack = UIColor.black

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorYellow.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 3.0),
                          size: CGSize(width: size.width, height: size.height / 3.0)))

        colorGreen.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 3.0 * 2.0),
                          size: CGSize(width: size.width, height: size.height / 3.0)))

        colorBlack.setFill()
        let radius = CGFloat(size.height / 12.0) * 4.422291236 / 2.0
        let xDelta = CGFloat(size.height / 12.0) * 0.211145618
        UIBezierPath.star(with: CGSize(width: size.width, height: size.height + xDelta * 2.0),
                          radius: radius).fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
