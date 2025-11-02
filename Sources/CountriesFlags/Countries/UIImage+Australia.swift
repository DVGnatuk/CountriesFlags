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

        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)

        colorBlue.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorWhite.setFill()
        // Commonwealth star
        UIBezierPath.star(at: CGPoint(x: size.width / 4.0, y: size.height * 0.75),
                          radius: size.height / 20.0 * 3.0,
                          type: .sevenPointed).fill()
        // Beta Crucis star
        UIBezierPath.star(at: CGPoint(x: size.width * 0.625, y: size.height / 6.0 * 2.63),
                          radius: size.height / 14.0,
                          type: .sevenPointed).fill()
        // Gamma Crucis star
        UIBezierPath.star(at: CGPoint(x: size.width * 0.75, y: size.height / 6.0),
                          radius: size.height / 14.0,
                          type: .sevenPointed).fill()
        // Delta Crucis star
        UIBezierPath.star(at: CGPoint(x: size.width * 0.861, y: size.height / 6.0 * 2.23),
                          radius: size.height / 14.0,
                          type: .sevenPointed).fill()
        // Alpha Crucis star
        UIBezierPath.star(at: CGPoint(x: size.width * 0.74975, y: size.height / 6.0 * 5.0),
                          radius: size.height / 14.0,
                          type: .sevenPointed).fill()
        // Epsilon Crucis star
        UIBezierPath.star(at: CGPoint(x: size.width * 0.8, y: size.height / 6.0 * 3.25),
                          radius: size.height / 24.0).fill()

        flagUnitedKingdom(with: size.halfSize)?.draw(at: .zero)

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif
