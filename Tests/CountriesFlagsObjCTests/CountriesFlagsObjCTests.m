//
//  CountriesFlagsObjCTests.m
//  CountriesFlags
//

#import "CountriesFlagsObjCBaseTests.h"

#import "UIImage+Extension.h"

@interface CountriesFlagsObjCTests : CountriesFlagsObjCBaseTests

@property (nonatomic, assign) CGSize imageSize;

@end

@implementation CountriesFlagsObjCTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.imageSize = CGSizeMake(100, 50);
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testUnknownCountry {
    UIImage* image = [UIImage flagForCountry:NSUIntegerMax size:self.imageSize];
    XCTAssertNil(image);
}

- (void)testAlandIslands {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsAlandIslands size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagAlandIslands"]);
    }
}

- (void)testAlgeria {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsAlgeria size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagAlgeria"]);
    }
}

- (void)testAntiguaAndBarbuda {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsAntiguaAndBarbuda size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagAntiguaAndBarbuda"]);
    }
}

- (void)testArmenia {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsArmenia size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagArmenia"]);
    }
}

- (void)testAruba {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsAruba size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagAruba"]);
    }
}

- (void)testAustria {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsAustria size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagAustria"]);
    }
}

- (void)testAzerbaijan {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsAzerbaijan size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagAzerbaijan"]);
    }
}

- (void)testBahamas {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsBahamas size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagBahamas"]);
    }
}

- (void)testBahrain {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsBahrain size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagBahrain"]);
    }
}

- (void)testBangladesh {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsBangladesh size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagBangladesh"]);
    }
}

- (void)testBelgium {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsBelgium size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagBelgium"]);
    }
}

- (void)testBenin {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsBenin size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagBenin"]);
    }
}

- (void)testBosniaAndHerzegovina {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsBosniaAndHerzegovina size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagBosniaAndHerzegovina"]);
    }
}

- (void)testBotswana {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsBotswana size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagBotswana"]);
    }
}

- (void)testBulgaria {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsBulgaria size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagBulgaria"]);
    }
}

- (void)testBurkinaFaso {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsBurkinaFaso size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagBurkinaFaso"]);
    }
}

- (void)testBurundi {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsBurundi size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagBurundi"]);
    }
}

- (void)testCaboVerde {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsCaboVerde size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagCapeVerde"]);
    }
}

- (void)testCapeVerde {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsCapeVerde size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagCapeVerde"]);
    }
}

- (void)testCentralAfricanRepublic {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsCentralAfricanRepublic size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image
                                            with:@"Flags/flagCentralAfricanRepublic"
                         maxPercentageDifference:0.01f]);
    }
}

- (void)testChad {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsChad size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagChad"]);
    }
}

- (void)testChile {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsChile size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagChile"]);
    }
}

- (void)testChina {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsChina size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image
                                            with:@"Flags/flagChina"
                         maxPercentageDifference:0.012f]);
    }
}

- (void)testColombia {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsColombia size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagColombia"]);
    }
}

- (void)testComoros {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsComoros size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagComoros"]);
    }
}

- (void)testCostaRica {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsCostaRica size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagCostaRica"]);
    }
}

- (void)testCoteDIvoire {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsCoteDIvoire size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagCoteDIvoire"]);
    }
}

- (void)testCuba {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsCuba size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagCuba"]);
    }
}

- (void)testCzechRepublic {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsCzechRepublic size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagCzechRepublic"]);
    }
}

- (void)testDemocraticRepublicCongo {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsDemocraticRepublicCongo size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagDemocraticRepublicCongo"]);
    }
}

- (void)testDenmark {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsDenmark size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagDenmark"]);
    }
}

- (void)testDjibouti {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsDjibouti size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagDjibouti"]);
    }
}

- (void)testEstonia {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsEstonia size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagEstonia"]);
    }
}

- (void)testFaroeIslands {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsFaroeIslands size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagFaroeIslands"]);
    }
}

- (void)testFinland {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsFinland size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagFinland"]);
    }
}

- (void)testFrance {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsFrance size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagFrance"]);
    }
}

- (void)testFrenchGuiana {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsFrenchGuiana size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagFrance"]);
    }
}

- (void)testGuadeloupe {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsGuadeloupe size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagFrance"]);
    }
}

- (void)testGabon {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsGabon size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagGabon"]);
    }
}

- (void)testGambia {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsGambia size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagGambia"]);
    }
}

- (void)testGermany {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsGermany size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagGermany"]);
    }
}

- (void)testGhana {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsGhana size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagGhana"]);
    }
}

- (void)testGreece {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsGreece size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagGreece"]);
    }
}

- (void)testGreenland {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsGreenland size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagGreenland"]);
    }
}

- (void)testGuinea {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsGuinea size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagGuinea"]);
    }
}

- (void)testGuineaBissau {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsGuineaBissau size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagGuineaBissau"]);
    }
}

- (void)testGuyana {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsGuyana size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagGuyana"]);
    }
}

- (void)testHonduras {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsHonduras size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagHonduras"]);
    }
}

- (void)testHungary {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsHungary size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagHungary"]);
    }
}

- (void)testIceland {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsIceland size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagIceland"]);
    }
}

- (void)testIndonesia {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsIndonesia size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagIndonesia"]);
    }
}

- (void)testIreland {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsIreland size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagIreland"]);
    }
}

- (void)testItaly {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsItaly size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagItaly"]);
    }
}

- (void)testJamaica {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsJamaica size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagJamaica"]);
    }
}

- (void)testJapan {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsJapan size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagJapan"]);
    }
}

- (void)testJordan {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsJordan size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagJordan"]);
    }
}

- (void)testKuwait {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsKuwait size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagKuwait"]);
    }
}

- (void)testLaos {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsLaos size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagLaos"]);
    }
}

- (void)testLatvia {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsLatvia size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagLatvia"]);
    }
}

- (void)testLiberia {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsLiberia size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagLiberia"]);
    }
}

- (void)testLithuania {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsLithuania size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagLithuania"]);
    }
}

- (void)testLuxembourg {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsLuxembourg size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagLuxembourg"]);
    }
}

- (void)testMadagascar {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsMadagascar size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagMadagascar"]);
    }
}

- (void)testMaldives {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsMaldives size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagMaldives"]);
    }
}

- (void)testMali {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsMali size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagMali"]);
    }
}

- (void)testMartinique {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsMartinique size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagMartinique"]);
    }
}

- (void)testMauritius {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsMauritius size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagMauritius"]);
    }
}

- (void)testMicronesia {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsMicronesia size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagMicronesia"]);
    }
}

- (void)testMonaco {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsMonaco size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagMonaco"]);
    }
}

- (void)testMyanmar {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsMyanmar size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagMyanmar"]);
    }
}

- (void)testNauru {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsNauru size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagNauru"]);
    }
}

- (void)testNetherlands {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsNetherlands size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagNetherlands"]);
    }
}

- (void)testNetherlandsAntilles {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsNetherlandsAntilles size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagNetherlandsAntilles"]);
    }
}

- (void)testNiger {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsNiger size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagNiger"]);
    }
}

- (void)testNigeria {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsNigeria size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagNigeria"]);
    }
}

- (void)testNorway {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsNorway size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagNorway"]);
    }
}

- (void)testPalau {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsPalau size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagPalau"]);
    }
}

- (void)testPanama {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsPanama size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image
                                            with:@"Flags/flagPanama"
                         maxPercentageDifference:0.01]);
    }
}

- (void)testPoland {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsPoland size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagPoland"]);
    }
}

- (void)testPuertoRico {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsPuertoRico size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagPuertoRico"]);
    }
}

- (void)testQatar {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsQatar size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagQatar"]);
    }
}

- (void)testRepublicCongo {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsRepublicCongo size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagRepublicCongo"]);
    }
}

- (void)testReunion {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsReunion size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagFrance"]);
    }
}

- (void)testRomania {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsRomania size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagRomania"]);
    }
}

- (void)testRussianFederation {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsRussianFederation size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagRussianFederation"]);
    }
}

- (void)testSaintKittsAndNevis {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsSaintKittsAndNevis size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image
                                            with:@"Flags/flagSaintKittsAndNevis"
                         maxPercentageDifference:0.01]);
    }
}

- (void)testSaintLucia {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsSaintLucia size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagSaintLucia"]);
    }
}

- (void)testSaintVincentAndTheGrenadines {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsSaintVincentAndTheGrenadines size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagSaintVincentAndTheGrenadines"]);
    }
}

- (void)testSamoa {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsSamoa size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagSamoa"]);
    }
}

- (void)testSaoTomeAndPrincipe {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsSaoTomeAndPrincipe size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image
                                            with:@"Flags/flagSaoTomeAndPrincipe"
                         maxPercentageDifference:0.01]);
    }
}

- (void)testSenegal {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsSenegal size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image
                                            with:@"Flags/flagSenegal"
                         maxPercentageDifference:0.01]);
    }
}

- (void)testSeychelles {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsSeychelles size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagSeychelles"]);
    }
}

- (void)testSierraLeone {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsSierraLeone size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagSierraLeone"]);
    }
}

- (void)testSingapore {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsSingapore size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagSingapore"]);
    }
}

- (void)testSomalia {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsSomalia size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagSomalia"]);
    }
}

- (void)testSudan {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsSudan size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagSudan"]);
    }
}

- (void)testSuriname {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsSuriname size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagSuriname"]);
    }
}

- (void)testSweden {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsSweden size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagSweden"]);
    }
}

- (void)testSwitzerland {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsSwitzerland size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagSwitzerland"]);
    }
}

- (void)testSyrianArabRepublic {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsSyrianArabRepublic size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagSyrianArabRepublic"]);
    }
}

- (void)testTanzania {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsTanzania size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagTanzania"]);
    }
}

- (void)testThailand {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsThailand size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagThailand"]);
    }
}

- (void)testTimorLeste {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsTimorLeste size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagTimorLeste"]);
    }
}

- (void)testTogo {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsTogo size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagTogo"]);
    }
}

- (void)testTonga {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsTonga size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagTonga"]);
    }
}

- (void)testTrinidadAndTobago {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsTrinidadAndTobago size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagTrinidadAndTobago"]);
    }
}

- (void)testTurkey {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsTurkey size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagTurkey"]);
    }
}

- (void)testUkraine {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsUkraine size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagUkraine"]);
    }
}

- (void)testUnitedArabEmirates {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsUnitedArabEmirates size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagUnitedArabEmirates"]);
    }
}

- (void)testUnitedStatesOfAmerica {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsUnitedStatesOfAmerica size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagUnitedStatesOfAmerica"]);
    }
}

- (void)testVietnam {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsVietnam size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagVietnam"]);
    }
}

- (void)testWallisAndFutuna {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsWallisAndFutuna size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagFrance"]);
    }
}

- (void)testYemen {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsYemen size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagYemen"]);
    }
}

@end
