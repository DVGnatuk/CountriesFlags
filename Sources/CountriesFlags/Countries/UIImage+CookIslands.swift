//
//  UIImage+CookIslands.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_the_Cook_Islands "wikipedia"
     
     Generates the flag of the Cook Islands.
     For more information see [wikipedia].
     
     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of the Cook Islands.
     */
    internal static func flagCookIslands(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 1.0 / 255.0,
                                green: 33.0 / 255.0,
                                blue: 105.0 / 255.0,
                                alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        for index in stride(from: 0.0, through: 14.0, by: 1.0) {
            let path = UIBezierPath.star(at: CGPoint(x: size.width / 4.0 * 3.0, y: size.height / 50.0 * 8.0),
                                         radius: size.height / 100.0 * 7.5)
            path.rotate(to: index * 24.0, around: CGPoint(x: size.width / 4.0 * 3.0, y: size.height / 2.0))
            path.fill()
        }

        flagUnitedKingdom(with: size.halfSize)?.draw(at: .zero)

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
