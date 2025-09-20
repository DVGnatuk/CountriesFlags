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
        case twelvePointed(innerRadius: CGFloat)
        case fourteenPointed
        case twentyFourPointed(innerRadius: CGFloat)
    }

    static func star(at point: CGPoint, radius: CGFloat, type: StarType = .fivePointed) -> UIBezierPath {
        let path = UIBezierPath()

        path.move(to: CGPoint(x: point.x, y: -radius + point.y))

        switch type {
        case .fourPointed: fourPointerStar(at: point, with: radius, path: path)
        case .fivePointed: fivePointerStar(at: point, with: radius, path: path)
        case .sixPointed: sixPointerStar(at: point, with: radius, path: path)
        case .sevenPointed: sevenPointerStar(at: point, with: radius, path: path)
        case .eightPointed: eightPointerStar(at: point, with: radius, path: path)
        case .twelvePointed(let innerRadius): twelvePointedStar(at: point,
                                                                with: radius,
                                                                innerRadius: innerRadius,
                                                                path: path)
        case .fourteenPointed: fourteenPointedStar(at: point, with: radius, path: path)
        case .twentyFourPointed(let innerRadius): twentyFourPointed(at: point,
                                                                    with: radius,
                                                                    innerRadius: innerRadius,
                                                                    path: path)
        }

        path.close()
        return path
    }

    static private func fourPointerStar(at point: CGPoint,
                                        with radius: CGFloat,
                                        path: UIBezierPath) {
        let innerRadius = radius * 2.0 / 6.0
        for index in 1..<8 {
            let currentRadius = index % 2 == 0 ? radius : innerRadius
            let angle: CGFloat = -.pi / 2.0 + CGFloat(index) * .pi / 4.0

            let xPos: CGFloat = currentRadius * cos(angle)
            let yPos: CGFloat = currentRadius * sin(angle)
            path.addLine(to: CGPoint(x: point.x + xPos, y: point.y + yPos))
        }
    }

    static private func fivePointerStar(at point: CGPoint,
                                        with radius: CGFloat,
                                        path: UIBezierPath) {
        let theta: Float = 2.0 * Float.pi * 2.0 / 5.0
        for index in 1..<5 {
            let xPos: CGFloat = radius * CGFloat( sinf(Float(index) * theta) )
            let yPos: CGFloat = radius * CGFloat( cosf(Float(index) * theta) )
            path.addLine(to: CGPoint(x: point.x + xPos, y: point.y - yPos))
//                print("Five pointed star: x: \(xPos), y: \(yPos)")
        }
    }

    static private func sixPointerStar(at point: CGPoint,
                                       with radius: CGFloat,
                                       path: UIBezierPath) {
        var angle = -CGFloat.pi / 2.0
        for index in 0..<6 {
            if index == 0 {
                path.move(to: CGPoint(x: point.x + cos(angle) * radius,
                                      y: point.y + sin(angle) * radius))
            } else {
                path.addLine(to: CGPoint(x: point.x + cos(angle) * radius,
                                         y: point.y + sin(angle) * radius))
            }
            angle += CGFloat.pi / 6.0

            path.addLine(to: CGPoint(x: point.x + cos(angle) * (radius * 0.58),
                                     y: point.y + sin(angle) * (radius * 0.58)))
            angle += CGFloat.pi / 6.0
        }
    }

    static private func sevenPointerStar(at point: CGPoint,
                                         with radius: CGFloat,
                                         path: UIBezierPath) {
        let innerRadius = radius / 2.0 * 0.7
        let angleIncrement = .pi * 2.0 / 7.0

        let startAngle: CGFloat = -.pi / 2.0
        path.move(to: CGPoint(x: point.x + radius * cos(startAngle),
                              y: point.y + radius * sin(startAngle)))

        for index in 1..<14 {
            let angle = startAngle + angleIncrement * CGFloat(index)
            let currentRadius: CGFloat = index % 2 == 0 ? radius : innerRadius

            path.addLine(to: CGPoint(x: point.x + currentRadius * cos(angle),
                                     y: point.y + currentRadius * sin(angle)))
        }
    }

    static private func eightPointerStar(at point: CGPoint,
                                         with radius: CGFloat,
                                         path: UIBezierPath) {
        for index in 0..<16 {
            let angle: CGFloat = CGFloat(index) * .pi / 8.0
            let currentRadius = index % 2 == 0 ? radius : radius / 2.0

            if index == 0 {
                path.move(to: CGPoint(x: point.x + currentRadius * cos(angle),
                                      y: point.y + currentRadius * sin(angle)))
            } else {
                path.addLine(to: CGPoint(x: point.x + currentRadius * cos(angle),
                                         y: point.y + currentRadius * sin(angle)))
            }
        }
    }

    static private func twelvePointedStar(at point: CGPoint,
                                          with radius: CGFloat,
                                          innerRadius: CGFloat,
                                          path: UIBezierPath) {
        path.move(to: CGPoint(x: point.x + radius * cos(0.0),
                              y: point.y + radius * sin(0.0)))

        for index in 1..<24 {
            let angle = CGFloat(index) * .pi / 12.0
            let currentRadius: CGFloat = index % 2 == 0 ? radius : innerRadius

            let point = CGPoint(x: point.x + currentRadius * cos(angle),
                                y: point.y + currentRadius * sin(angle))
            path.addLine(to: point)
        }
    }

    static private func fourteenPointedStar(at point: CGPoint,
                                            with radius: CGFloat,
                                            path: UIBezierPath) {
        let innerRadius = radius * 2.0 / 5.0
        let angleIncrement = .pi * 2.0 / 28.0

        for index in 0..<28 {
            let currentRadius: CGFloat = index % 2 == 0 ? radius : innerRadius
            let angle: CGFloat = angleIncrement * CGFloat(index) - .pi / 2.0

            if index == 0 {
                path.move(to: CGPoint(x: point.x + radius * cos(angle),
                                      y: point.y + radius * sin(angle)))
            } else {
                path.addLine(to: CGPoint(x: point.x + currentRadius * cos(angle),
                                         y: point.y + currentRadius * sin(angle)))
            }
        }
    }
    
    static private func twentyFourPointed(at point: CGPoint,
                                          with radius: CGFloat,
                                          innerRadius: CGFloat,
                                          path: UIBezierPath) {
        path.move(to: CGPoint(x: point.x + radius * cos(0.0),
                              y: point.y + radius * sin(0.0)))

        for index in 1..<48 {
            let angle = CGFloat(index) * .pi / 24.0
            let currentRadius: CGFloat = index % 2 == 0 ? radius : innerRadius

            let point = CGPoint(x: point.x + currentRadius * cos(angle),
                                y: point.y + currentRadius * sin(angle))
            path.addLine(to: point)
        }
    }
}
