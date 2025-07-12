//
//  CountriesFlagsObjCTests.m
//  

#import <XCTest/XCTest.h>

#import "UIImage+Extension.h"

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

- (void)testPoland {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsPoland size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
//    XCTAssertTrue([UIImage compareGenerated:image with:@"Flags/flagUkraine"]);
}

- (void)testUkraine {
    UIImage* image = [UIImage flagForCountry:CountriesFlagsUkraine size:self.imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, self.imageSize));
//    XCTAssertTrue([UIImage compareGenerated:image with:@"Flags/flagUkraine"]);
}

@end
