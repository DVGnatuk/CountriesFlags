//
//  CountriesFlagsTests.swift
//  CountriesFlagsTests
//

import XCTest
@testable import CountriesFlags

final class CountriesFlagsTests: XCTestCase {

    private let imageSize = CGSize(width: 200, height: 50)
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRussianFederation() throws {
        let image = UIImage.flag(for: .RussianFederation, with: imageSize)
        XCTAssertNotNil(image)
        XCTAssertTrue(CGSizeEqualToSize(image!.size, imageSize))
        // TODO: Compare image data with standard image
    }
    
    func testUkraine() throws {
        let image = UIImage.flag(for: .Ukraine, with: imageSize)
        XCTAssertNotNil(image)
        XCTAssertTrue(CGSizeEqualToSize(image!.size, imageSize))
        // TODO: Compare image data with standard image
    }

}
