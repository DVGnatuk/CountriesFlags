//
//  UIImage+Vietnam.swift
//  CountriesFlags
//

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Vietnam "wikipedia"
     
     Generates the flag of Vietnam.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Vietnam.
     */
    internal static func flagVietnam(with size: CGSize) -> UIImage? {
        let colorYellow = UIColor(red: 1.0,
                                  green: 1.0,
                                  blue: 0.0,
                                  alpha: 1.0)
        let colorRed = UIColor(red: 218.0/255.0,
                               green: 37.0/255.0,
                               blue: 29.0/255.0,
                               alpha: 1.0)
        
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        
        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorYellow.setFill()
        let polygonPath = UIBezierPath()

        let xCenter: CGFloat = size.width / 2.0
        let yCenter: CGFloat = size.height / 2.0
        let radius = CGFloat(size.height * 12.0 / 20.0) / 2.0
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
        polygonPath.fill()
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
    }
    
//    struct Star: Shape {
//        let corners: Int = 5
////        let smoothness: Double
//
//        func path(in rect: CGRect) -> Path {
//            // ensure we have at least two corners, otherwise send back an empty path
//            guard corners >= 2 else { return Path() }
//
//            // draw from the center of our rectangle
//            let center = CGPoint(x: rect.width / 2, y: rect.height / 2)
//
//            // start from directly upwards (as opposed to down or to the right)
//            var currentAngle = -CGFloat.pi / 2
//
//            // calculate how much we need to move with each star corner
//            let angleAdjustment = .pi * 2 / Double(corners * 2)
//
//            // figure out how much we need to move X/Y for the inner points of the star
//            let innerX = center.x //* smoothness
//            let innerY = center.y //* smoothness
//
//            // we're ready to start with our path now
//            var path = Path()
//
//            // move to our initial position
//            path.move(to: CGPoint(x: center.x * cos(currentAngle), y: center.y * sin(currentAngle)))
//
//            // track the lowest point we draw to, so we can center later
//            var bottomEdge: Double = 0
//
//            // loop over all our points/inner points
//            for corner in 0..<corners * 2  {
//                // figure out the location of this point
//                let sinAngle = sin(currentAngle)
//                let cosAngle = cos(currentAngle)
//                let bottom: Double
//
//                // if we're a multiple of 2 we are drawing the outer edge of the star
//                if corner.isMultiple(of: 2) {
//                    // store this Y position
//                    bottom = center.y * sinAngle
//
//                    // …and add a line to there
//                    path.addLine(to: CGPoint(x: center.x * cosAngle, y: bottom))
//                } else {
//                    // we're not a multiple of 2, which means we're drawing an inner point
//
//                    // store this Y position
//                    bottom = innerY * sinAngle
//
//                    // …and add a line to there
//                    path.addLine(to: CGPoint(x: innerX * cosAngle, y: bottom))
//                }
//
//                // if this new bottom point is our lowest, stash it away for later
//                if bottom > bottomEdge {
//                    bottomEdge = bottom
//                }
//
//                // move on to the next corner
//                currentAngle += angleAdjustment
//            }
//
//            // figure out how much unused space we have at the bottom of our drawing rectangle
//            let unusedSpace = (rect.height / 2 - bottomEdge) / 2
//
//            // create and apply a transform that moves our path down by that amount, centering the shape vertically
//            let transform = CGAffineTransform(translationX: center.x, y: center.y + unusedSpace)
//            return path.applying(transform)
//        }
//    }
}

#endif
