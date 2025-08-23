//
//  UIBezierPath+Star.swift
//  CountriesFlags
//

import UIKit

extension UIBezierPath {

    enum StarType {
        case fourPointed
        case fivePointed
        case sixPointed
        case sevenPointed
        case eightPointed
        case twelvePointed
    }

    static func star(with size: CGSize, radius: CGFloat, type: StarType = .fivePointed) -> UIBezierPath {
        let path = UIBezierPath()

        let xCenter: CGFloat = size.width / 2.0
        let yCenter: CGFloat = size.height / 2.0

        path.move(to: CGPoint(x: xCenter, y: -radius + yCenter))

        switch type {
        case .fourPointed: fourPointerStar(with: radius, xCenter: xCenter, yCenter: yCenter, path: path)
        case .fivePointed: fivePointerStar(with: radius, xCenter: xCenter, yCenter: yCenter, path: path)
        case .sixPointed: sixPointerStar(with: radius, xCenter: xCenter, yCenter: yCenter, path: path)
        case .sevenPointed: sevenPointerStar(with: radius, xCenter: xCenter, yCenter: yCenter, path: path)
        case .eightPointed: eightPointerStar(with: radius, xCenter: xCenter, yCenter: yCenter, path: path)
        case .twelvePointed: twelvePointedStar(with: radius, xCenter: xCenter, yCenter: yCenter, path: path)
        }

        path.close()
        return path
    }

    static private func fourPointerStar(with radius: CGFloat,
                                        xCenter: CGFloat,
                                        yCenter: CGFloat,
                                        path: UIBezierPath) {
        let innerRadius = radius * 2.0 / 6.0
        for index in 1..<8 {
            let currentRadius = index % 2 == 0 ? radius : innerRadius
            let angle: CGFloat = -.pi / 2.0 + CGFloat(index) * .pi / 4.0

            let xPos: CGFloat = currentRadius * cos(angle)
            let yPos: CGFloat = currentRadius * sin(angle)
            path.addLine(to: CGPoint(x: xCenter + xPos, y: yCenter + yPos))
        }
    }

    static private func fivePointerStar(with radius: CGFloat,
                                        xCenter: CGFloat,
                                        yCenter: CGFloat,
                                        path: UIBezierPath) {
        let theta: Float = 2.0 * Float.pi * 2.0 / 5.0
        for index in 1..<5 {
            let xPos: CGFloat = radius * CGFloat( sinf(Float(index) * theta) )
            let yPos: CGFloat = radius * CGFloat( cosf(Float(index) * theta) )
            path.addLine(to: CGPoint(x: xCenter + xPos, y: yCenter - yPos))
//                print("Five pointed star: x: \(xPos), y: \(yPos)")
        }
    }

    static private func sixPointerStar(with radius: CGFloat,
                                       xCenter: CGFloat,
                                       yCenter: CGFloat,
                                       path: UIBezierPath) {
        var angle = -CGFloat.pi / 2.0
        for index in 0..<6 {
            let point = CGPoint(x: xCenter + cos(angle) * radius,
                                y: yCenter + sin(angle) * radius)
            if index == 0 {
                path.move(to: point)
            } else {
                path.addLine(to: point)
            }
            angle += CGFloat.pi / 6.0

            path.addLine(to: CGPoint(x: xCenter + cos(angle) * (radius * 0.58),
                                     y: yCenter + sin(angle) * (radius * 0.58)))
            angle += CGFloat.pi / 6.0
        }
    }

    static private func sevenPointerStar(with radius: CGFloat,
                                         xCenter: CGFloat,
                                         yCenter: CGFloat,
                                         path: UIBezierPath) {
        let innerRadius = radius / 2.0 * 0.7
        let angleIncrement = .pi * 2.0 / 7.0

        let startAngle: CGFloat = -.pi / 2.0
        path.move(to: CGPoint(x: xCenter + radius * cos(startAngle),
                              y: yCenter + radius * sin(startAngle)))

        for index in 1..<14 {
            let angle = startAngle + angleIncrement * CGFloat(index)
            let currentRadius: CGFloat = index % 2 == 0 ? radius : innerRadius

            path.addLine(to: CGPoint(x: xCenter + currentRadius * cos(angle),
                                     y: yCenter + currentRadius * sin(angle)))
        }
    }

    static private func eightPointerStar(with radius: CGFloat,
                                         xCenter: CGFloat,
                                         yCenter: CGFloat,
                                         path: UIBezierPath) {
        for index in 0..<16 {
            let angle: CGFloat = CGFloat(index) * .pi / 8.0
            let currentRadius = index % 2 == 0 ? radius : radius / 2.0
            let point = CGPoint(x: xCenter + currentRadius * cos(angle),
                                y: yCenter + currentRadius * sin(angle))
            if index == 0 {
                path.move(to: point)
            } else {
                path.addLine(to: point)
            }
        }
    }

    static private func twelvePointedStar(with radius: CGFloat,
                                          xCenter: CGFloat,
                                          yCenter: CGFloat,
                                          path: UIBezierPath) {
        let innerRadius = radius * 0.5

        path.move(to: CGPoint(x: xCenter + radius * cos(0.0),
                              y: yCenter + radius * sin(0.0)))

        for index in 1..<24 {
            let angle = CGFloat(index) * .pi / 12.0
            let currentRadius: CGFloat = index % 2 == 0 ? radius : innerRadius

            let point = CGPoint(x: xCenter + currentRadius * cos(angle),
                                y: yCenter + currentRadius * sin(angle))
            path.addLine(to: point)
        }
    }
}
