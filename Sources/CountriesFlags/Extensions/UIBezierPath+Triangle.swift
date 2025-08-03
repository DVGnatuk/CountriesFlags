//
//  UIBezierPath+Extension.swift
//  CountriesFlags
//  

import UIKit

extension UIBezierPath {

    enum TriangleType {
        case leftMiddle
        case leftEquilateral
        case rightMiddle
    }

    static func triangle(in size: CGSize, type: TriangleType) -> UIBezierPath {
        // Calculate vertex coordinates
        // .left       .right
        // x1 y1       x1 y1
        // |\         /|
        // | \ x3 y3 / |
        // | /       \ |
        // |/         \|
        // x2 y2       x2 y2
        var x1 = 0.0
        let y1 = 0.0

        var x2 = 0.0
        let y2 = size.height

        var x3 = 0.0
        let y3 = size.height / 2.0

        switch type {
        case .leftEquilateral:
            x3 = size.height * sin(.pi / 3) // sin(60 degrees)

        case .leftMiddle:
            x3 = size.width

        case .rightMiddle:
            x1 = size.width
            x2 = size.width
            x3 = size.width / 2.0
        }

        let path = UIBezierPath()
        path.move(to: CGPoint(x: x1, y: y1))
        path.addLine(to: CGPoint(x: x2, y: y2))
        path.addLine(to: CGPoint(x: x3, y: y3))
        path.close()

        return path
    }
}
