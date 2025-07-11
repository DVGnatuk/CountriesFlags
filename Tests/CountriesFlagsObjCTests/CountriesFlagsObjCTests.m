//
//  CountriesFlagsObjCTests.m
//  

#import <XCTest/XCTest.h>

#import "UIImage+Extension.h"

@interface CountriesFlagsObjCTests : XCTestCase

@end

@implementation CountriesFlagsObjCTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testUkraine {
    CGSize imageSize = CGSizeMake(100, 50);
    UIImage* image = [UIImage flagForCountry:Ukraine size:imageSize];
    XCTAssertNotNil(image, @"Generated flag is nil");
    XCTAssertTrue(CGSizeEqualToSize(image.size, imageSize));
//    XCTAssertTrue(compareGenerated(flag: image, with: "Flags/flagLaos"))
}

@end
