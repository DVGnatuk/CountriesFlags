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

    func testArmenia() throws {
        guard let image = UIImage.flag(for: .Armenia, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }
        
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagArmenia"))
    }
    
    func testAustria() throws {
        guard let image = UIImage.flag(for: .Austria, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }
        
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagAustria"))
    }
    
    func testBelgium() throws {
        guard let image = UIImage.flag(for: .Belgium, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }
        
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagBelgium"))
    }
    
    func testBulgaria() throws {
        guard let image = UIImage.flag(for: .Bulgaria, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }
        
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagBulgaria"))
    }
    
    func testChad() throws {
        guard let image = UIImage.flag(for: .Chad, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }
        
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagChad"))
    }
    
    func testColombia() throws {
        guard let image = UIImage.flag(for: .Colombia, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }
        
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagColombia"))
    }
    
    func testGermany() throws {
        guard let image = UIImage.flag(for: .Germany, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }
        
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagGermany"))
    }
    
    func testHungary() throws {
        guard let image = UIImage.flag(for: .Hungary, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }
        
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagHungary"))
    }
    
    func testIndonesia() throws {
        guard let image = UIImage.flag(for: .Indonesia, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }
        
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagIndonesia"))
    }
    
    func testItaly() throws {
        guard let image = UIImage.flag(for: .Italy, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }
        
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagItaly"))
    }
    
    func testLuxembourg() throws {
        guard let image = UIImage.flag(for: .Luxembourg, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }
        
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagLuxembourg"))
    }
    
    func testMauritius() throws {
        guard let image = UIImage.flag(for: .Mauritius, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }
        
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagMauritius"))
    }
    
    func testMonaco() throws {
        guard let image = UIImage.flag(for: .Monaco, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }
        
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagMonaco"))
    }
    
    func testNetherlands() throws {
        guard let image = UIImage.flag(for: .Netherlands, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }
        
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagNetherlands"))
    }
    
    func testNigeria() throws {
        guard let image = UIImage.flag(for: .Nigeria, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }
        
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagNigeria"))
    }
    
    func testRussianFederation() throws {
        guard let image = UIImage.flag(for: .RussianFederation, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }
        
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagRussianFederation"))
    }
    
    func testPoland() throws {
        guard let image = UIImage.flag(for: .Poland, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }
        
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagPoland"))
    }
   
    func testSierraLeone() throws {
        guard let image = UIImage.flag(for: .SierraLeone, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }
        
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagSierraLeone"))
    }
    
    func testUkraine() throws {
        guard let image = UIImage.flag(for: .Ukraine, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }
        
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagUkraine"))
    }
    
    func testYemen() throws {
        guard let image = UIImage.flag(for: .Yemen, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }
        
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagYemen"))
    }

    private func compareGenerated(flag image: UIImage, with source: String) -> Bool {
        guard let path = Bundle.module.path(forResource: source, ofType: "png"),
              let testImage = UIImage(contentsOfFile: path) else {
            XCTFail("Test image is nil")
            return false
        }
        
        let percentageDifference: CGFloat = image.percentageDifference(with: testImage)
        return percentageDifference == 0.0
    }
}

extension UIImage {
    fileprivate func percentageDifference(with otherImage: UIImage) -> CGFloat {
        guard let image1 = self.cgImage, let image2 = otherImage.cgImage else {
            return 100.0 // Or handle error appropriately
        }

        let width1 = image1.width
        let height1 = image1.height
        let width2 = image2.width
        let height2 = image2.height

        if width1 != width2 || height1 != height2 {
            return 100.0 // Images must have the same dimensions
        }

        let dataSize = width1 * height1 * 4
        var pixelBuffer1 = [UInt8](repeating: 0, count: dataSize)
        var pixelBuffer2 = [UInt8](repeating: 0, count: dataSize)

        let context1 = CGContext(data: &pixelBuffer1, width: width1, height: height1, bitsPerComponent: 8, bytesPerRow: width1 * 4, space: CGColorSpaceCreateDeviceRGB(), bitmapInfo: CGImageAlphaInfo.premultipliedLast.rawValue)!
        let context2 = CGContext(data: &pixelBuffer2, width: width2, height: height2, bitsPerComponent: 8, bytesPerRow: width2 * 4, space: CGColorSpaceCreateDeviceRGB(), bitmapInfo: CGImageAlphaInfo.premultipliedLast.rawValue)!

        context1.draw(image1, in: CGRect(x: 0, y: 0, width: width1, height: height1))
        context2.draw(image2, in: CGRect(x: 0, y: 0, width: width2, height: height2))

        var differingPixelCount = 0

        for i in 0..<dataSize {
            if pixelBuffer1[i] != pixelBuffer2[i] {
                differingPixelCount += 1
            }
        }

        return (CGFloat(differingPixelCount) / CGFloat(dataSize)) * 100.0
    }
}

