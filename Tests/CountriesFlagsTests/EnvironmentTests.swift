//
//  EnvironmentTests.swift
//  
//  EnvironmentTests.swift
//

import XCTest

final class EnvironmentTests: XCTestCase {

//    override func setUpWithError() throws {
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }

//    override func tearDownWithError() throws {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }

    func testScreenScaleFactor() throws {
        XCTAssertTrue(UIScreen.main.scale == 2.0, "All tests must be run on device with @2x screen scale factor")
    }
}
