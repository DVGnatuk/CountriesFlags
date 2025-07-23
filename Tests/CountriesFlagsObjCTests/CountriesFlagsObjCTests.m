//
//  CountriesFlagsObjCTests.m
//  

#import <XCTest/XCTest.h>

#import "UIImage+Extension.h"

#import "UIImage+Testing.h"

@interface CountriesFlagsObjCTests : XCTestCase

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

- (void)testAustria {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsAustria size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagAustria"]);
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

- (void)testColombia {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsColombia size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagColombia"]);
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

- (void)testCzechRepublic {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsCzechRepublic size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagCzechRepublic"]);
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

- (void)testIceland {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsIceland size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagIceland"]);
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

- (void)testKuwait {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsKuwait size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagKuwait"]);
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

- (void)testMonaco {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsMonaco size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagMonaco"]);
    }
}

- (void)testPanama {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsPanama size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    // TODO: find wrong pixel
//    if (@available(iOS 14, *)) {
//        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagPanama"]);
//    }
}

- (void)testPoland {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsPoland size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagPoland"]);
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

- (void)testQatar {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsQatar size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagQatar"]);
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

- (void)testThailand {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsThailand size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagThailand"]);
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

- (BOOL)compareGeneratedFlag:(UIImage *)flag with:(NSString *)source API_AVAILABLE(ios(14)) {
    // SWIFTPM_MODULE_BUNDLE requires ios 14: https://github.com/swiftlang/swift-evolution/blob/main/proposals/0271-package-manager-resources.md
    NSString* path = [SWIFTPM_MODULE_BUNDLE pathForResource:source ofType:@"png"];
    XCTAssertTrue([path length] > 0);
    
    UIImage* testFlag = [UIImage imageWithContentsOfFile: path];
    XCTAssertNotNil(testFlag, @"Test flag is nil");

    CGFloat percentageDifference = [flag percentageDifferenceWithImage:testFlag];
    return percentageDifference == 0.0f;
}

@end
