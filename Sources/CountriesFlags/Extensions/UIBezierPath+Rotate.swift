//
//  UIBezierPath+Rotate.swift
//  CountriesFlags
//

import UIKit

extension UIBezierPath {
    /**
     Rotates UIBezierPath around the specified center.
     
     - Parameters:
        - angle: Angle of rotation in degrees.
        - center: Center of rotation.
     */
    func rotate(to angle: CGFloat, around center: CGPoint) {
        let radians = angle / 180.0 * .pi
        var transform: CGAffineTransform = .identity
        transform = transform.translatedBy(x: center.x, y: center.y)
        transform = transform.rotated(by: radians)
        transform = transform.translatedBy(x: -center.x, y: -center.y)
        apply(transform)
    }
}
