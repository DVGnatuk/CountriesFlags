//
//  UIBezierPath+Plus.swift
//  CountriesFlags
//

import UIKit

extension UIBezierPath {

    static func plus(in size: CGSize, with sideWidth: CGFloat) -> UIBezierPath {
        let xOffset = size.width / 2.0 - sideWidth * 3.0 / 2.0
        let yOffset = size.height / 2.0 - sideWidth * 3.0 / 2.0

        let path = UIBezierPath()
        // top
        path.move(to: CGPoint(x: xOffset + sideWidth, y: yOffset))
        path.addLine(to: CGPoint(x: xOffset + sideWidth * 2.0, y: yOffset))
        path.addLine(to: CGPoint(x: xOffset + sideWidth * 2.0, y: yOffset + sideWidth))
        // right
        path.addLine(to: CGPoint(x: xOffset + sideWidth * 3.0, y: yOffset + sideWidth))
        path.addLine(to: CGPoint(x: xOffset + sideWidth * 3.0, y: yOffset + sideWidth * 2.0))
        path.addLine(to: CGPoint(x: xOffset + sideWidth * 2.0, y: yOffset + sideWidth * 2.0))
        // bottom
        path.addLine(to: CGPoint(x: xOffset + sideWidth * 2.0, y: yOffset + sideWidth * 3.0))
        path.addLine(to: CGPoint(x: xOffset + sideWidth, y: yOffset + sideWidth * 3.0))
        path.addLine(to: CGPoint(x: xOffset + sideWidth, y: yOffset + sideWidth * 2.0))
        // left
        path.addLine(to: CGPoint(x: xOffset, y: yOffset + sideWidth * 2.0))
        path.addLine(to: CGPoint(x: xOffset, y: yOffset + sideWidth))
        path.addLine(to: CGPoint(x: xOffset + sideWidth, y: yOffset + sideWidth))
        path.close()

        return path
    }
}
