//
//  CGSize+Extension.swift
//  CountriesFlags
//

import UIKit

extension CGSize {
    // Returns the midpoint from a size.
    var midPoint: CGPoint {
        CGPoint(x: self.width / 2.0, y: self.height / 2.0)
    }

    // Returns the half of current size.
    var halfSize: CGSize {
        CGSize(width: self.width / 2.0, height: self.height / 2.0)
    }
}
