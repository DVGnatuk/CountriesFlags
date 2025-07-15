//
//  UIBezierPath+Extension.swift
//  CountriesFlags
//  

import UIKit

extension UIBezierPath {
    static func star(with size: CGSize, radius: CGFloat) -> UIBezierPath {
        let polygonPath = UIBezierPath()

        let xCenter: CGFloat = size.width / 2.0
        let yCenter: CGFloat = size.height / 2.0
        let flip: CGFloat = -1.0 // use this to flip the figure 1.0 or -1.0
        let polySide = CGFloat(5)
        let theta = 2.0 * Double.pi * Double(2.0 / polySide)

        polygonPath.move(to: CGPoint(x: xCenter, y: radius * flip + yCenter))

        for i in 1..<Int(polySide) {
            let x: CGFloat = radius * CGFloat( sin(Double(i) * theta) )
            let y: CGFloat = radius * CGFloat( cos(Double(i) * theta) )
            polygonPath.addLine(to: CGPoint(x: x + xCenter, y: y * flip + yCenter))
        }

        polygonPath.close()
        return polygonPath
    }
}
