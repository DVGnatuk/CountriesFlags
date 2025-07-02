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

    func testGermany() throws {
        guard let image = UIImage.flag(for: .Germany, with: imageSize) else {
            XCTFail("image is nil")
            return
        }
        XCTAssertNotNil(image)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        // TODO: Compare image data with standard image
        //XCTAssertEqual(image.pngData(), <#T##expression2: Equatable##Equatable#>)
    }
    
    func testRussianFederation() throws {
        guard let image = UIImage.flag(for: .RussianFederation, with: imageSize) else {
            XCTFail("image is nil")
            return
        }
        XCTAssertNotNil(image)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        // TODO: Compare image data with standard image
        //XCTAssertEqual(image.pngData(), <#T##expression2: Equatable##Equatable#>)
    }
    
    func testUkraine() throws {
        guard let image = UIImage.flag(for: .Ukraine, with: imageSize) else {
            XCTFail("image is nil")
            return
        }
        XCTAssertNotNil(image)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        // TODO: Compare image data with standard image
        //XCTAssertEqual(image.pngData(), <#T##expression2: Equatable##Equatable#>)
    }

}
