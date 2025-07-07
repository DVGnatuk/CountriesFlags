//
//  CountriesFlagsTests.swift
//  CountriesFlagsTests
//

import XCTest
@testable import CountriesFlags

final class CountriesFlagsTests: XCTestCase {

    private let imageSize = CGSize(width: 100, height: 50)
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAustria() throws {
        guard let image = UIImage.flag(for: .Austria, with: imageSize) else {
            XCTFail("image is nil")
            return
        }
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        // TODO: Compare image data with standard image
        //XCTAssertEqual(image.pngData(), <#T##expression2: Equatable##Equatable#>)
    }
    
    func testBulgaria() throws {
        guard let image = UIImage.flag(for: .Bulgaria, with: imageSize) else {
            XCTFail("image is nil")
            return
        }
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        // TODO: Compare image data with standard image
        //XCTAssertEqual(image.pngData(), <#T##expression2: Equatable##Equatable#>)
    }
    
    func testColombia() throws {
        guard let image = UIImage.flag(for: .Colombia, with: imageSize) else {
            XCTFail("image is nil")
            return
        }
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        // TODO: Compare image data with standard image
        //XCTAssertEqual(image.pngData(), <#T##expression2: Equatable##Equatable#>)
    }
    
    func testGermany() throws {
        guard let image = UIImage.flag(for: .Germany, with: imageSize) else {
            XCTFail("image is nil")
            return
        }
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        // TODO: Compare image data with standard image
        //XCTAssertEqual(image.pngData(), <#T##expression2: Equatable##Equatable#>)
    }
    
    func testHungary() throws {
        guard let image = UIImage.flag(for: .Hungary, with: imageSize) else {
            XCTFail("image is nil")
            return
        }
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        // TODO: Compare image data with standard image
        //XCTAssertEqual(image.pngData(), <#T##expression2: Equatable##Equatable#>)
    }
    
    func testIndonesia() throws {
        guard let image = UIImage.flag(for: .Indonesia, with: imageSize) else {
            XCTFail("image is nil")
            return
        }
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        
//        let path = Bundle(for: type(of: self)).path(forResource: "Ukraine", ofType: "png")
//        let testImage = UIImage(contentsOfFile: path!)
//        XCTAssertEqual(image.pngData(), testImage!.pngData())
    }
    
    func testItaly() throws {
        guard let image = UIImage.flag(for: .Italy, with: imageSize) else {
            XCTFail("image is nil")
            return
        }
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        
//        let path = Bundle(for: type(of: self)).path(forResource: "Ukraine", ofType: "png")
//        let testImage = UIImage(contentsOfFile: path!)
//        XCTAssertEqual(image.pngData(), testImage!.pngData())
    }
    
    func testLuxembourg() throws {
        guard let image = UIImage.flag(for: .Luxembourg, with: imageSize) else {
            XCTFail("image is nil")
            return
        }
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        
//        let path = Bundle(for: type(of: self)).path(forResource: "Ukraine", ofType: "png")
//        let testImage = UIImage(contentsOfFile: path!)
//        XCTAssertEqual(image.pngData(), testImage!.pngData())
    }
    
    func testMauritius() throws {
        guard let image = UIImage.flag(for: .Mauritius, with: imageSize) else {
            XCTFail("image is nil")
            return
        }
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        // TODO: Compare image data with standard image
        //XCTAssertEqual(image.pngData(), <#T##expression2: Equatable##Equatable#>)
    }
    
    func testNetherlands() throws {
        guard let image = UIImage.flag(for: .Netherlands, with: imageSize) else {
            XCTFail("image is nil")
            return
        }
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        // TODO: Compare image data with standard image
        //XCTAssertEqual(image.pngData(), <#T##expression2: Equatable##Equatable#>)
    }
    
    func testNigeria() throws {
        guard let image = UIImage.flag(for: .Nigeria, with: imageSize) else {
            XCTFail("image is nil")
            return
        }
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        // TODO: Compare image data with standard image
        //XCTAssertEqual(image.pngData(), <#T##expression2: Equatable##Equatable#>)
    }
    
    func testRussianFederation() throws {
        guard let image = UIImage.flag(for: .RussianFederation, with: imageSize) else {
            XCTFail("image is nil")
            return
        }
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        // TODO: Compare image data with standard image
        //XCTAssertEqual(image.pngData(), <#T##expression2: Equatable##Equatable#>)
    }
    
    func testUkraine() throws {
        guard let image = UIImage.flag(for: .Ukraine, with: imageSize) else {
            XCTFail("image is nil")
            return
        }
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        
//        let path = Bundle(for: type(of: self)).path(forResource: "Ukraine", ofType: "png")
//        let testImage = UIImage(contentsOfFile: path!)
//        XCTAssertEqual(image.pngData(), testImage!.pngData())
    }
    
    func testYemen() throws {
        guard let image = UIImage.flag(for: .Yemen, with: imageSize) else {
            XCTFail("image is nil")
            return
        }
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        
//        let path = Bundle(for: type(of: self)).path(forResource: "Ukraine", ofType: "png")
//        let testImage = UIImage(contentsOfFile: path!)
//        XCTAssertEqual(image.pngData(), testImage!.pngData())
    }

}
