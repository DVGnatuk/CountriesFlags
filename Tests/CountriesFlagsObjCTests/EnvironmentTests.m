//
//  EnvironmentTests.m
//  CountriesFlags
//

#import <XCTest/XCTest.h>

@interface EnvironmentTests : XCTestCase

@end

@implementation EnvironmentTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testScreenScaleFactor {
    XCTAssertTrue([[UIScreen mainScreen] scale] == 2.0, "All tests must be run on device with @2x screen scale factor");
}

@end
