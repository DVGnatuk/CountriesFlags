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

- (void)testPoland {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsPoland size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagPoland"]);
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

- (void)testUkraine {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsUkraine size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
    if (@available(iOS 14, *)) {
        XCTAssertTrue([self compareGeneratedFlag:image with:@"Flags/flagUkraine"]);
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
