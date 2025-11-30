//
//  CountriesFlagsTests.swift
//

// swiftlint:disable file_length

import XCTest
@testable import CountriesFlags

final class CountriesFlagsTests: XCTestCase {

    private let imageSize = CGSize(width: 100, height: 50)

//    override func setUpWithError() throws {
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }

//    override func tearDownWithError() throws {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }

    func testAlandIslands() throws {
        let image = UIImage.flag(for: .AlandIslands, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagAlandIslands"))
    }

    func testAlgeria() throws {
        let image = UIImage.flag(for: .Algeria, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagAlgeria"))
    }

    func testAntiguaAndBarbuda() throws {
        let image = UIImage.flag(for: .AntiguaAndBarbuda, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagAntiguaAndBarbuda"))
    }

    func testArmenia() throws {
        let image = UIImage.flag(for: .Armenia, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagArmenia"))
    }

    func testAruba() throws {
        let image = UIImage.flag(for: .Aruba, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagAruba"))
    }

    func testAustralia() throws {
        let image = UIImage.flag(for: .Australia, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagAustralia"))
    }

    func testAustria() throws {
        let image = UIImage.flag(for: .Austria, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagAustria"))
    }

    func testAzerbaijan() throws {
        let image = UIImage.flag(for: .Azerbaijan, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagAzerbaijan"))
    }

    func testBahamas() throws {
        let image = UIImage.flag(for: .Bahamas, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagBahamas"))
    }

    func testBahrain() throws {
        let image = UIImage.flag(for: .Bahrain, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagBahrain"))
    }

    func testBangladesh() throws {
        let image = UIImage.flag(for: .Bangladesh, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagBangladesh"))
    }

    func testBarbados() throws {
        let image = UIImage.flag(for: .Barbados, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagBarbados"))
    }

    func testBelarus() throws {
        let image = UIImage.flag(for: .Belarus, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagBelarus"))
    }

    func testBelgium() throws {
        let image = UIImage.flag(for: .Belgium, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagBelgium"))
    }

    func testBenin() throws {
        let image = UIImage.flag(for: .Benin, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagBenin"))
    }

    func testBosniaAndHerzegovina() throws {
        let image = UIImage.flag(for: .BosniaAndHerzegovina, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagBosniaAndHerzegovina"))
    }

    func testBotswana() throws {
        let image = UIImage.flag(for: .Botswana, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagBotswana"))
    }

    func testBulgaria() throws {
        let image = UIImage.flag(for: .Bulgaria, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagBulgaria"))
    }

    func testBurkinaFaso() throws {
        let image = UIImage.flag(for: .BurkinaFaso, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagBurkinaFaso"))
    }

    func testBurundi() throws {
        let image = UIImage.flag(for: .Burundi, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagBurundi"))
    }

    func testCaboVerde() throws {
        let image = UIImage.flag(for: .CaboVerde, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagCapeVerde"))
    }

    func testCapeVerde() throws {
        let image = UIImage.flag(for: .CapeVerde, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagCapeVerde"))
    }

    func testCentralAfricanRepublic() throws {
        let image = UIImage.flag(for: .CentralAfricanRepublic, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagCentralAfricanRepublic"))
    }

    func testChad() throws {
        let image = UIImage.flag(for: .Chad, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagChad"))
    }

    func testChile() throws {
        let image = UIImage.flag(for: .Chile, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagChile"))
    }

    func testChina() throws {
        let image = UIImage.flag(for: .China, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagChina"))
    }

    func testColombia() throws {
        let image = UIImage.flag(for: .Colombia, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagColombia"))
    }

    func testComoros() throws {
        let image = UIImage.flag(for: .Comoros, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagComoros"))
    }

    func testCookIslands() throws {
        let image = UIImage.flag(for: .CookIslands, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagCookIslands"))
    }

    func testCostaRica() throws {
        let image = UIImage.flag(for: .CostaRica, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagCostaRica"))
    }

    func testCoteDIvoire() throws {
        let image = UIImage.flag(for: .CoteDIvoire, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagCoteDIvoire"))
    }

    func testCuba() throws {
        let image = UIImage.flag(for: .Cuba, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagCuba"))
    }

    func testCzechRepublic() throws {
        let image = UIImage.flag(for: .CzechRepublic, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagCzechRepublic"))
    }

    func testDemocraticRepublicCongo() throws {
        let image = UIImage.flag(for: .DemocraticRepublicCongo, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagDemocraticRepublicCongo"))
    }

    func testDenmark() throws {
        let image = UIImage.flag(for: .Denmark, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagDenmark"))
    }

    func testDjibouti() throws {
        let image = UIImage.flag(for: .Djibouti, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagDjibouti"))
    }

    func testEstonia() throws {
        let image = UIImage.flag(for: .Estonia, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagEstonia"))
    }

    func testFaroeIslands() throws {
        let image = UIImage.flag(for: .FaroeIslands, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagFaroeIslands"))
    }

    func testFinland() throws {
        let image = UIImage.flag(for: .Finland, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagFinland"))
    }

    func testFrance() throws {
        let image = UIImage.flag(for: .France, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagFrance"))
    }

    func testFrenchGuiana() throws {
        let image = UIImage.flag(for: .FrenchGuiana, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagFrance"))
    }

    func testGuadeloupe() throws {
        let image = UIImage.flag(for: .Guadeloupe, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagFrance"))
    }

    func testGabon() throws {
        let image = UIImage.flag(for: .Gabon, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagGabon"))
    }

    func testGambia() throws {
        let image = UIImage.flag(for: .Gambia, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagGambia"))
    }

    func testGermany() throws {
        let image = UIImage.flag(for: .Germany, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagGermany"))
    }

    func testGhana() throws {
        let image = UIImage.flag(for: .Ghana, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagGhana"))
    }

    func testGreece() throws {
        let image = UIImage.flag(for: .Greece, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagGreece"))
    }

    func testGreenland() throws {
        let image = UIImage.flag(for: .Greenland, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagGreenland"))
    }

    func testGuinea() throws {
        let image = UIImage.flag(for: .Guinea, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagGuinea"))
    }

    func testGuineaBissau() throws {
        let image = UIImage.flag(for: .GuineaBissau, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagGuineaBissau"))
    }

    func testGuyana() throws {
        let image = UIImage.flag(for: .Guyana, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagGuyana"))
    }

    func testHonduras() throws {
        let image = UIImage.flag(for: .Honduras, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagHonduras"))
    }

    func testHungary() throws {
        let image = UIImage.flag(for: .Hungary, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagHungary"))
    }

    func testIceland() throws {
        let image = UIImage.flag(for: .Iceland, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagIceland"))
    }

    func testIndonesia() throws {
        let image = UIImage.flag(for: .Indonesia, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagIndonesia"))
    }

    func testIreland() throws {
        let image = UIImage.flag(for: .Ireland, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagIreland"))
    }

    func testIsrael() throws {
        let image = UIImage.flag(for: .Israel, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagIsrael"))
    }

    func testItaly() throws {
        let image = UIImage.flag(for: .Italy, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagItaly"))
    }

    func testJamaica() throws {
        let image = UIImage.flag(for: .Jamaica, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagJamaica"))
    }

    func testJapan() throws {
        let image = UIImage.flag(for: .Japan, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagJapan"))
    }

    func testJordan() throws {
        let image = UIImage.flag(for: .Jordan, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagJordan"))
    }

    func testKuwait() throws {
        let image = UIImage.flag(for: .Kuwait, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagKuwait"))
    }

    func testLaos() throws {
        let image = UIImage.flag(for: .Laos, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagLaos"))
    }

    func testLatvia() throws {
        let image = UIImage.flag(for: .Latvia, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagLatvia"))
    }

    func testLiberia() throws {
        let image = UIImage.flag(for: .Liberia, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagLiberia"))
    }

    func testLibya() throws {
        let image = UIImage.flag(for: .Libya, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagLibya"))
    }

    func testLithuania() throws {
        let image = UIImage.flag(for: .Lithuania, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagLithuania"))
    }

    func testLuxembourg() throws {
        let image = UIImage.flag(for: .Luxembourg, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagLuxembourg"))
    }

    func testMadagascar() throws {
        let image = UIImage.flag(for: .Madagascar, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagMadagascar"))
    }

    func testMalaysia() throws {
        let image = UIImage.flag(for: .Malaysia, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagMalaysia"))
    }

    func testMaldives() throws {
        let image = UIImage.flag(for: .Maldives, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagMaldives"))
    }

    func testMali() throws {
        let image = UIImage.flag(for: .Mali, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagMali"))
    }

    func testMarshallIslands() throws {
        let image = UIImage.flag(for: .MarshallIslands, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagMarshallIslands"))
    }

    func testMartinique() throws {
        let image = UIImage.flag(for: .Martinique, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagMartinique"))
    }

    func testMauritius() throws {
        let image = UIImage.flag(for: .Mauritius, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagMauritius"))
    }

    func testMauritania() throws {
        let image = UIImage.flag(for: .Mauritania, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagMauritania"))
    }

    func testMicronesia() throws {
        let image = UIImage.flag(for: .Micronesia, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagMicronesia"))
    }

    func testMonaco() throws {
        let image = UIImage.flag(for: .Monaco, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagMonaco"))
    }

    func testMorocco() throws {
        let image = UIImage.flag(for: .Morocco, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagMorocco"))
    }

    func testMyanmar() throws {
        let image = UIImage.flag(for: .Myanmar, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagMyanmar"))
    }

    func testNamibia() throws {
        let image = UIImage.flag(for: .Namibia, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagNamibia"))
    }

    func testNauru() throws {
        let image = UIImage.flag(for: .Nauru, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagNauru"))
    }

    func testNetherlands() throws {
        let image = UIImage.flag(for: .Netherlands, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagNetherlands"))
    }

    func testNetherlandsAntilles() throws {
        let image = UIImage.flag(for: .NetherlandsAntilles, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagNetherlandsAntilles"))
    }

    func testNewZealand() throws {
        let image = UIImage.flag(for: .NewZealand, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagNewZealand"))
    }

    func testNiger() throws {
        let image = UIImage.flag(for: .Niger, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagNiger"))
    }

    func testNigeria() throws {
        let image = UIImage.flag(for: .Nigeria, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagNigeria"))
    }

    func testNiue() throws {
        let image = UIImage.flag(for: .Niue, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagNiue"))
    }

    func testNorthMacedonia() throws {
        let image = UIImage.flag(for: .NorthMacedonia, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagNorthMacedonia"))
    }

    func testNorway() throws {
        let image = UIImage.flag(for: .Norway, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagNorway"))
    }

    func testPakistan() throws {
        let image = UIImage.flag(for: .Pakistan, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagPakistan"))
    }

    func testRomania() throws {
        let image = UIImage.flag(for: .Romania, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagRomania"))
    }

    func testPalau() throws {
        let image = UIImage.flag(for: .Palau, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagPalau"))
    }

    func testPanama() throws {
        let image = UIImage.flag(for: .Panama, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagPanama"))
    }

    func testPoland() throws {
        let image = UIImage.flag(for: .Poland, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagPoland"))
    }

    func testPuertoRico() throws {
        let image = UIImage.flag(for: .PuertoRico, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagPuertoRico"))
    }

    func testQatar() throws {
        let image = UIImage.flag(for: .Qatar, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagQatar"))
    }

    func testRepublicCongo() throws {
        let image = UIImage.flag(for: .RepublicCongo, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagRepublicCongo"))
    }

    func testReunion() throws {
        let image = UIImage.flag(for: .Reunion, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagFrance"))
    }

    func testRussianFederation() throws {
        let image = UIImage.flag(for: .RussianFederation, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagRussianFederation"))
    }

    func testRwanda() throws {
        let image = UIImage.flag(for: .Rwanda, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagRwanda"))
    }

    func testSaintKittsAndNevis() throws {
        let image = UIImage.flag(for: .SaintKittsAndNevis, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagSaintKittsAndNevis"))
    }

    func testSaintLucia() throws {
        let image = UIImage.flag(for: .SaintLucia, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagSaintLucia"))
    }

    func testSaintMartin() throws {
        let image = UIImage.flag(for: .SaintMartin, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagFrance"))
    }

    func testSaintVincentAndTheGrenadines() throws {
        let image = UIImage.flag(for: .SaintVincentAndTheGrenadines, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagSaintVincentAndTheGrenadines"))
    }

    func testSamoa() throws {
        let image = UIImage.flag(for: .Samoa, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagSamoa"))
    }

    func testSaoTomeAndPrincipe() throws {
        let image = UIImage.flag(for: .SaoTomeAndPrincipe, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagSaoTomeAndPrincipe"))
    }

    func testSenegal() throws {
        let image = UIImage.flag(for: .Senegal, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagSenegal"))
    }

    func testSeychelles() throws {
        let image = UIImage.flag(for: .Seychelles, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagSeychelles"))
    }

    func testSierraLeone() throws {
        let image = UIImage.flag(for: .SierraLeone, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagSierraLeone"))
    }

    func testSingapore() throws {
        let image = UIImage.flag(for: .Singapore, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagSingapore"))
    }

    func testSlovakia() throws {
        let image = UIImage.flag(for: .Slovakia, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagSlovakia"))
    }

    func testSolomonIslands() throws {
        let image = UIImage.flag(for: .SolomonIslands, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagSolomonIslands"))
    }

    func testSomalia() throws {
        let image = UIImage.flag(for: .Somalia, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagSomalia"))
    }

    func testSouthAfrica() throws {
        let image = UIImage.flag(for: .SouthAfrica, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagSouthAfrica"))
    }

    func testSovietUnion() throws {
        let image = UIImage.flag(for: .SovietUnion, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagSovietUnion"))
    }

    func testSudan() throws {
        let image = UIImage.flag(for: .Sudan, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagSudan"))
    }

    func testSuriname() throws {
        let image = UIImage.flag(for: .Suriname, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagSuriname"))
    }

    func testSweden() throws {
        let image = UIImage.flag(for: .Sweden, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagSweden"))
    }

    func testSwitzerland() throws {
        let image = UIImage.flag(for: .Switzerland, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagSwitzerland"))
    }

    func testSyrianArabRepublic() throws {
        let image = UIImage.flag(for: .SyrianArabRepublic, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagSyrianArabRepublic"))
    }

    func testTaiwan() throws {
        let image = UIImage.flag(for: .Taiwan, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagTaiwan"))
    }

    func testTanzania() throws {
        let image = UIImage.flag(for: .Tanzania, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagTanzania"))
    }

    func testThailand() throws {
        let image = UIImage.flag(for: .Thailand, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagThailand"))
    }

    func testTimorLeste() throws {
        let image = UIImage.flag(for: .TimorLeste, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagTimorLeste"))
    }

    func testTogo() throws {
        let image = UIImage.flag(for: .Togo, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagTogo"))
    }

    func testTonga() throws {
        let image = UIImage.flag(for: .Tonga, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagTonga"))
    }

    func testTrinidadAndTobago() throws {
        let image = UIImage.flag(for: .TrinidadAndTobago, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagTrinidadAndTobago"))
    }

    func testTunisia() throws {
        let image = UIImage.flag(for: .Tunisia, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagTunisia"))
    }

    func testTurkey() throws {
        let image = UIImage.flag(for: .Turkey, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagTurkey"))
    }

    func testTuvalu() throws {
        let image = UIImage.flag(for: .Tuvalu, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagTuvalu"))
    }

    func testUkraine() throws {
        let image = UIImage.flag(for: .Ukraine, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagUkraine"))
    }

    func testUnitedArabEmirates() throws {
        let image = UIImage.flag(for: .UnitedArabEmirates, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagUnitedArabEmirates"))
    }

    func testUnitedKingdom() throws {
        let image = UIImage.flag(for: .UnitedKingdom, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagUnitedKingdom"))
    }

    func testUnitedStatesOfAmerica() throws {
        let image = UIImage.flag(for: .UnitedStatesOfAmerica, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagUnitedStatesOfAmerica"))
    }

    func testUzbekistan() throws {
        let image = UIImage.flag(for: .Uzbekistan, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagUzbekistan"))
    }

    func testVietnam() throws {
        let image = UIImage.flag(for: .Vietnam, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagVietnam"))
    }

    func testWallisAndFutuna() throws {
        let image = UIImage.flag(for: .WallisAndFutuna, with: imageSize)
        XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize))
        XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagFrance"))
    }

    func testYemen() throws {
        let image = UIImage.flag(for: .Yemen, with: imageSize)
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

        for index in 0..<dataSize where pixelBuffer1[index] != pixelBuffer2[index] {
                differingPixelCount += 1
        }

        return (CGFloat(differingPixelCount) / CGFloat(dataSize)) * 100.0
    }
}

// swiftlint:enable file_length
