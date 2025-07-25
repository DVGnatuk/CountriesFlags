//
//  UIBezierPath+Extension.swift
//  CountriesFlags
//  

import UIKit

extension UIBezierPath {
    enum StarType {
        case fourPointed
        case fivePointed
    }

    static func star(with size: CGSize, radius: CGFloat, type: StarType = .fivePointed) -> UIBezierPath {
        let polygonPath = UIBezierPath()

        let xCenter: CGFloat = size.width / 2.0
        let yCenter: CGFloat = size.height / 2.0

        polygonPath.move(to: CGPoint(x: xCenter, y: -radius + yCenter))

        switch type {
        case .fourPointed:
            let innerRadius = radius * 2.0 / 6.0
            for index in 1..<8 {
                let currentRadius = index % 2 == 0 ? radius : innerRadius
                let angle: CGFloat = -.pi / 2.0 + CGFloat(index) * .pi / 4.0

                let xPos: CGFloat = currentRadius * cos(angle)
                let yPos: CGFloat = currentRadius * sin(angle)
                polygonPath.addLine(to: CGPoint(x: xCenter + xPos, y: yCenter + yPos))
            }

        default:
            let theta: Float = 2.0 * Float.pi * 2.0 / 5.0
            for index in 1..<5 {
                let xPos: CGFloat = radius * CGFloat( sinf(Float(index) * theta) )
                let yPos: CGFloat = radius * CGFloat( cosf(Float(index) * theta) )
                polygonPath.addLine(to: CGPoint(x: xCenter + xPos, y: yCenter - yPos))
            }
        }

        polygonPath.close()
        return polygonPath
    }

    enum TriangleType {
        case left
        case leftEquilateral
    }

    static func triangle(in size: CGSize, type: TriangleType) -> UIBezierPath {
        // Calculate vertex coordinates
        // x1 y1
        // |\
        // | \ x3 y3
        // | /
        // |/
        // x2 y2
        let x1 = 0.0
        let y1 = 0.0

        let x2 = 0.0
        let y2 = size.height

        var x3 = 0.0
        switch type {
        case .leftEquilateral:
            x3 = size.height * sin(.pi / 3) // sin(60 degrees)
        case .left:
            x3 = size.width
        }
        let y3 = size.height / 2.0

        let path = UIBezierPath()
        path.move(to: CGPoint(x: x1, y: y1))
        path.addLine(to: CGPoint(x: x2, y: y2))
        path.addLine(to: CGPoint(x: x3, y: y3))
        path.close()

        return path
    }

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
