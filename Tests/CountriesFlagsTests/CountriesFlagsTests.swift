//
//  CountriesFlagsTests.swift
//

// swiftlint:disable type_body_length
// swiftlint:disable file_length

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

    func testBahamas() throws {
        guard let image = UIImage.flag(for: .Bahamas, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagBahamas"))
    }

    func testBahrain() throws {
        guard let image = UIImage.flag(for: .Bahrain, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagBahrain"))
    }

    func testBangladesh() throws {
        guard let image = UIImage.flag(for: .Bangladesh, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagBangladesh"))
    }

    func testBelgium() throws {
        guard let image = UIImage.flag(for: .Belgium, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagBelgium"))
    }

    func testBenin() throws {
        guard let image = UIImage.flag(for: .Benin, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagBenin"))
    }

    func testBotswana() throws {
        guard let image = UIImage.flag(for: .Botswana, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagBotswana"))
    }

    func testBulgaria() throws {
        guard let image = UIImage.flag(for: .Bulgaria, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagBulgaria"))
    }

    func testBurkinaFaso() throws {
        guard let image = UIImage.flag(for: .BurkinaFaso, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagBurkinaFaso"))
    }

    func testChad() throws {
        guard let image = UIImage.flag(for: .Chad, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagChad"))
    }

    func testChile() throws {
        guard let image = UIImage.flag(for: .Chile, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagChile"))
    }

    func testColombia() throws {
        guard let image = UIImage.flag(for: .Colombia, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagColombia"))
    }

    func testCostaRica() throws {
        guard let image = UIImage.flag(for: .CostaRica, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagCostaRica"))
    }

    func testCoteDIvoire() throws {
        guard let image = UIImage.flag(for: .CoteDIvoire, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagCoteDIvoire"))
    }

    func testCzechRepublic() throws {
        guard let image = UIImage.flag(for: .CzechRepublic, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagCzechRepublic"))
    }

    func testDenmark() throws {
        guard let image = UIImage.flag(for: .Denmark, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagDenmark"))
    }

    func testEstonia() throws {
        guard let image = UIImage.flag(for: .Estonia, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagEstonia"))
    }

    func testFaroeIslands() throws {
        guard let image = UIImage.flag(for: .FaroeIslands, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagFaroeIslands"))
    }

    func testFinland() throws {
        guard let image = UIImage.flag(for: .Finland, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagFinland"))
    }

    func testFrance() throws {
        guard let image = UIImage.flag(for: .France, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagFrance"))
    }

    func testFrenchGuiana() throws {
        guard let image = UIImage.flag(for: .FrenchGuiana, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagFrance"))
    }

    func testGuadeloupe() throws {
        guard let image = UIImage.flag(for: .Guadeloupe, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagFrance"))
    }

    func testGabon() throws {
        guard let image = UIImage.flag(for: .Gabon, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagGabon"))
    }

    func testGambia() throws {
        guard let image = UIImage.flag(for: .Gambia, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagGambia"))
    }

    func testGermany() throws {
        guard let image = UIImage.flag(for: .Germany, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagGermany"))
    }

    func testGhana() throws {
        guard let image = UIImage.flag(for: .Ghana, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagGhana"))
    }

    func testGreece() throws {
        guard let image = UIImage.flag(for: .Greece, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagGreece"))
    }

    func testGuinea() throws {
        guard let image = UIImage.flag(for: .Guinea, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagGuinea"))
    }

    func testHonduras() throws {
        guard let image = UIImage.flag(for: .Honduras, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagHonduras"))
    }

    func testHungary() throws {
        guard let image = UIImage.flag(for: .Hungary, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagHungary"))
    }

    func testIceland() throws {
        guard let image = UIImage.flag(for: .Iceland, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagIceland"))
    }

    func testIndonesia() throws {
        guard let image = UIImage.flag(for: .Indonesia, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagIndonesia"))
    }

    func testIreland() throws {
        guard let image = UIImage.flag(for: .Ireland, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagIreland"))
    }

    func testItaly() throws {
        guard let image = UIImage.flag(for: .Italy, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagItaly"))
    }

    func testJapan() throws {
        guard let image = UIImage.flag(for: .Japan, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagJapan"))
    }

    func testKuwait() throws {
        guard let image = UIImage.flag(for: .Kuwait, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagKuwait"))
    }

    func testLaos() throws {
        guard let image = UIImage.flag(for: .Laos, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagLaos"))
    }

    func testLatvia() throws {
        guard let image = UIImage.flag(for: .Latvia, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagLatvia"))
    }

    func testLiberia() throws {
        guard let image = UIImage.flag(for: .Liberia, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagLiberia"))
    }

    func testLithuania() throws {
        guard let image = UIImage.flag(for: .Lithuania, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagLithuania"))
    }

    func testLuxembourg() throws {
        guard let image = UIImage.flag(for: .Luxembourg, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagLuxembourg"))
    }

    func testMadagascar() throws {
        guard let image = UIImage.flag(for: .Madagascar, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagMadagascar"))
    }

    func testMali() throws {
        guard let image = UIImage.flag(for: .Mali, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagMali"))
    }

    func testMartinique() throws {
        guard let image = UIImage.flag(for: .Martinique, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagMartinique"))
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

    func testNiger() throws {
        guard let image = UIImage.flag(for: .Niger, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagNiger"))
    }

    func testNigeria() throws {
        guard let image = UIImage.flag(for: .Nigeria, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagNigeria"))
    }

    func testNorway() throws {
        guard let image = UIImage.flag(for: .Norway, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagNorway"))
    }

    func testRomania() throws {
        guard let image = UIImage.flag(for: .Romania, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagRomania"))
    }

    func testRepublicCongo() throws {
        guard let image = UIImage.flag(for: .RepublicCongo, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagRepublicCongo"))
    }

    func testRussianFederation() throws {
        guard let image = UIImage.flag(for: .RussianFederation, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagRussianFederation"))
    }

    func testPalau() throws {
        guard let image = UIImage.flag(for: .Palau, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagPalau"))
    }

    func testPoland() throws {
        guard let image = UIImage.flag(for: .Poland, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagPoland"))
    }

    func testSenegal() throws {
        guard let image = UIImage.flag(for: .Senegal, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagSenegal"))
    }

    func testSeychelles() throws {
        guard let image = UIImage.flag(for: .Seychelles, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagSeychelles"))
    }

    func testSierraLeone() throws {
        guard let image = UIImage.flag(for: .SierraLeone, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagSierraLeone"))
    }

    func testSomalia() throws {
        guard let image = UIImage.flag(for: .Somalia, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagSomalia"))
    }

    func testSudan() throws {
        guard let image = UIImage.flag(for: .Sudan, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagSudan"))
    }

    func testSweden() throws {
        guard let image = UIImage.flag(for: .Sweden, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagSweden"))
    }

    func testSwitzerland() throws {
        guard let image = UIImage.flag(for: .Switzerland, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagSwitzerland"))
    }

    func testThailand() throws {
        guard let image = UIImage.flag(for: .Thailand, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagThailand"))
    }

    func testTogo() throws {
        guard let image = UIImage.flag(for: .Togo, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagTogo"))
    }

    func testTonga() throws {
        guard let image = UIImage.flag(for: .Tonga, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagTonga"))
    }

    func testUkraine() throws {
        guard let image = UIImage.flag(for: .Ukraine, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagUkraine"))
    }

    func testUnitedArabEmirates() throws {
        guard let image = UIImage.flag(for: .UnitedArabEmirates, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagUnitedArabEmirates"))
    }

    func testVietnam() throws {
        guard let image = UIImage.flag(for: .Vietnam, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagVietnam"))
    }

    func testWallisAndFutuna() throws {
        guard let image = UIImage.flag(for: .WallisAndFutuna, with: imageSize) else {
            XCTFail("Generated flag is nil")
            return
        }

        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagFrance"))
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
        // SPM generates the resource_bundle_accessor only if the corresponding target
        // contains resources in the Package.swift.
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

        let context1 = CGContext(data: &pixelBuffer1,
                                 width: width1,
                                 height: height1,
                                 bitsPerComponent: 8,
                                 bytesPerRow: width1 * 4,
                                 space: CGColorSpaceCreateDeviceRGB(),
                                 bitmapInfo: CGImageAlphaInfo.premultipliedLast.rawValue)!
        let context2 = CGContext(data: &pixelBuffer2,
                                 width: width2,
                                 height: height2,
                                 bitsPerComponent: 8,
                                 bytesPerRow: width2 * 4,
                                 space: CGColorSpaceCreateDeviceRGB(),
                                 bitmapInfo: CGImageAlphaInfo.premultipliedLast.rawValue)!

        context1.draw(image1, in: CGRect(x: 0, y: 0, width: width1, height: height1))
        context2.draw(image2, in: CGRect(x: 0, y: 0, width: width2, height: height2))

        var differingPixelCount = 0

        for index in 0..<dataSize {
            if pixelBuffer1[index] != pixelBuffer2[index] {
                differingPixelCount += 1
            }
        }

        return (CGFloat(differingPixelCount) / CGFloat(dataSize)) * 100.0
    }
}

// swiftlint:enable type_body_length
// swiftlint:enable file_length
