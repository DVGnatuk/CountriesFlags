//
//  UIBezierPath+Extension.swift
//  CountriesFlags
//  

import UIKit

extension UIBezierPath {

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
}
