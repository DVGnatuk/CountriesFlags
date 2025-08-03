//
//  UIImage+FaroeIslands.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_the_Faroe_Islands "wikipedia"
     
     Generates the flag of the Faroe Islands.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of the Faroe Islands.
     */
    internal static func flagFaroeIslands(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 0.0,
                                green: 94.0 / 255.0,
                                blue: 185.0 / 255.0,
                                alpha: 1.0)
        let colorRed = UIColor(red: 239.0 / 255.0,
                               green: 48.0 / 255.0,
                               blue: 62.0 / 255.0,
                               alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorWhite.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorBlue.setFill()
        // horizontal line
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 16.0 * 6.0),
                          size: CGSize(width: size.width, height: size.height / 16.0 * 4.0)))
        // vertical line
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 22.0 * 6.0, y: 0.0),
                          size: CGSize(width: size.width / 22.0 * 4.0, height: size.height)))

        colorRed.setFill()
        // horizontal line
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 16.0 * 7.0),
                          size: CGSize(width: size.width, height: size.height / 16.0 * 2.0)))
        // vertical line
        UIRectFill(CGRect(origin: CGPoint(x: size.width / 22.0 * 7.0, y: 0.0),
                          size: CGSize(width: size.width / 22.0 * 2.0, height: size.height)))

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
