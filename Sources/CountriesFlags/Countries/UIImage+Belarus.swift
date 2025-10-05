//
//  UIImage+Belarus.swift
//  CountriesFlags
//

// swiftlint:disable line_length

#if canImport(UIKit)

import UIKit

extension UIImage {
    /**
     [wikipedia]: https://en.wikipedia.org/wiki/Flag_of_Belarus "wikipedia"
     
     Generates the flag of Belarus.
     For more information see [wikipedia].

     - Parameters:
        - size: image size.
     
     - Returns: Returns the flag of Belarus.
     */
    internal static func flagBelarus(with size: CGSize) -> UIImage? {
        let colorWhite = UIColor.white
        let colorRed = UIColor(red: 206.0 / 255.0,
                               green: 23.0 / 255.0,
                               blue: 32.0 / 255.0,
                               alpha: 1.0)
        let colorGreen = UIColor(red: 0.0,
                                 green: 124.0 / 255.0,
                                 blue: 48.0 / 255.0,
                                 alpha: 1.0)

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)

        colorRed.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        colorGreen.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0.0, y: size.height / 9.0 * 6.0),
                          size: CGSize(width: size.width, height: size.height / 3.0)))

        colorWhite.setFill()
        let ornamentOffsetX = size.width / 18.0 * (2.0 / 21.0)
        let ornamentWidth = size.width / 18.0 * 2.0
        UIRectFill(CGRect(origin: CGPoint(x: ornamentOffsetX, y: 0.0),
                          size: CGSize(width: ornamentWidth, height: size.height)))

        // Hoist ornament
        colorRed.setFill()
        colorRed.setStroke()
        let hoistOrnamentTemplate: [[Int]] = [
            [0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1],
            [1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1],
            [0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0],
            [0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0],
            [1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 0],
            [0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0],
            [0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0],
            [1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1],
            [0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1],
            [0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0],
            [0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0],
            [1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0],
            [0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0],
            [0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0],
            [0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1],
            [1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1],
            [0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0],
            [0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0],
            [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0],
            [1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1],
            [0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1],
            [0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1],
            [1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1],
            [0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0],
            [1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0],
            [1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1],
            [1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0],
            [0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0],
            [0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 0],
            [0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 1],
            [0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1]
        ]
        let rowsAmount = hoistOrnamentTemplate.count
        let columnsAmount = hoistOrnamentTemplate.first?.count ?? 0
        let ornamentCellWidth = ornamentWidth / (CGFloat(columnsAmount) * 2.0 - 1.0)
        let ornamentCellHeight = size.height / (CGFloat(rowsAmount) * 2.0 - 1.0)
        let ornamentCellSize = CGSize(width: ornamentCellWidth, height: ornamentCellHeight)

        for (rowIndex, rowData) in hoistOrnamentTemplate.enumerated().reversed() {
            for (columnIndex, columnData) in rowData.enumerated().reversed() where columnData == 1 {
                // top left part
                var pathOrigin = CGPoint(x: ornamentOffsetX + ornamentCellWidth * CGFloat(columnIndex),
                                         y: ornamentCellHeight * CGFloat(rowIndex))
                var path = UIBezierPath(rect: CGRect(origin: pathOrigin, size: ornamentCellSize))
                path.lineWidth = ornamentCellHeight / 30.0
                path.fill()
                path.stroke()
                // top right part
                pathOrigin = CGPoint(x: ornamentOffsetX + ornamentCellWidth * CGFloat(columnsAmount * 2 - columnIndex - 2),
                                     y: ornamentCellHeight * CGFloat(rowIndex))
                path = UIBezierPath(rect: CGRect(origin: pathOrigin, size: ornamentCellSize))
                path.lineWidth = ornamentCellHeight / 30.0
                path.fill()
                path.stroke()
                // bottom left part
                pathOrigin = CGPoint(x: ornamentOffsetX + ornamentCellWidth * CGFloat(columnIndex),
                                     y: ornamentCellHeight * CGFloat(rowsAmount + rowsAmount - rowIndex - 2))
                path = UIBezierPath(rect: CGRect(origin: pathOrigin, size: ornamentCellSize))
                path.lineWidth = ornamentCellHeight / 30.0
                path.fill()
                path.stroke()
                // bottom right part
                pathOrigin = CGPoint(x: ornamentOffsetX + ornamentCellWidth * CGFloat(columnsAmount * 2 - columnIndex - 2),
                                     y: ornamentCellHeight * CGFloat(rowsAmount + rowsAmount - rowIndex - 2))
                path = UIBezierPath(rect: CGRect(origin: pathOrigin, size: ornamentCellSize))
                path.lineWidth = ornamentCellHeight / 30.0
                path.fill()
                path.stroke()
            }
        }

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}

#endif

// swiftlint:enable line_length
