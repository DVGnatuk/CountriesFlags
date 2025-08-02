//
//  UIBezierPath+Star.swift
//  CountriesFlags
//

// swiftlint:disable function_body_length

import UIKit

extension UIBezierPath {

    enum StarType {
        case fourPointed
        case fivePointed
        case sevenPointed
        case twelvePointed
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

        case .sevenPointed:
            let innerRadius = radius / 2.0 * 0.7
            let angleIncrement = .pi * 2.0 / 7.0

            let startAngle: CGFloat = -.pi / 2.0
            polygonPath.move(to: CGPoint(x: xCenter + radius * cos(startAngle),
                                         y: yCenter + radius * sin(startAngle)))

            for index in 1..<14 {
                let angle = startAngle + angleIncrement * CGFloat(index)
                let currentRadius: CGFloat = index % 2 == 0 ? radius : innerRadius

                let point = CGPoint(x: xCenter + currentRadius * cos(angle),
                                    y: yCenter + currentRadius * sin(angle))
                polygonPath.addLine(to: point)
            }

        case .twelvePointed:
            let innerRadius = radius * 0.5

            polygonPath.move(to: CGPoint(x: xCenter + radius * cos(0.0),
                                         y: yCenter + radius * sin(0.0)))

            for index in 1..<24 {
                let angle = CGFloat(index) * .pi / 12.0
                let currentRadius: CGFloat = index % 2 == 0 ? radius : innerRadius

                let point = CGPoint(x: xCenter + currentRadius * cos(angle),
                                    y: yCenter + currentRadius * sin(angle))
                polygonPath.addLine(to: point)
            }

        default:
            let theta: Float = 2.0 * Float.pi * 2.0 / 5.0
            for index in 1..<5 {
                let xPos: CGFloat = radius * CGFloat( sinf(Float(index) * theta) )
                let yPos: CGFloat = radius * CGFloat( cosf(Float(index) * theta) )
                polygonPath.addLine(to: CGPoint(x: xCenter + xPos, y: yCenter - yPos))
//                print("Five pointed star: x: \(xPos), y: \(yPos)")
            }
        }

        polygonPath.close()
        return polygonPath
    }
}

// swiftlint:enable function_body_length
