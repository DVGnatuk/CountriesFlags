//
//  UIImage+Australia.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Australia "wikipedia"
     
     Generates the flag of Australia.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Australia.
     */
    internal static func flagAustralia(with size: CGSize) -> UIImage? {
        let colorBlue = UIColor(red: 1.0 / 255.0,
                                green: 33.0 / 255.0,
                                blue: 105.0 / 255.0,
                                alpha: 1.0)
        let colorWhite = UIColor.white

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        // Commonwealth star
        UIBezierPath.star(with: CGSize(width: size.width / 2.0, height: size.height * 1.5),
                          radius: size.height / 20.0 * 3.0,
                          type: .sevenPointed).fill()
        // Beta Crucis star
        UIBezierPath.star(with: CGSize(width: size.width * 1.25, height: size.height / 6.0 * 5.26),
                          radius: size.height / 14.0,
                          type: .sevenPointed).fill()
        // Gamma Crucis star
        UIBezierPath.star(with: CGSize(width: size.width * 1.5, height: size.height / 6.0 * 2.0),
                          radius: size.height / 14.0,
                          type: .sevenPointed).fill()
        // Delta Crucis star
        UIBezierPath.star(with: CGSize(width: size.width * 1.722, height: size.height / 6.0 * 4.46),
                          radius: size.height / 14.0,
                          type: .sevenPointed).fill()
        // Alpha Crucis star
        UIBezierPath.star(with: CGSize(width: size.width * 1.4995, height: size.height / 6.0 * 10.0),
                          radius: size.height / 14.0,
                          type: .sevenPointed).fill()
        // Epsilon Crucis star
        UIBezierPath.star(with: CGSize(width: size.width * 1.6, height: size.height / 6.0 * 6.5),
                          radius: size.height / 24.0).fill()

        flagUnitedKingdom(with: CGSize(width: size.width / 2.0, height: size.height / 2.0))?.draw(at: .zero)

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
