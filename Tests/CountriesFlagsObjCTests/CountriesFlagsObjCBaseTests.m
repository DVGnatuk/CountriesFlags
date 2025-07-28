//
//  CountriesFlagsObjCBaseTests.m
//  CountriesFlags
//

#import "CountriesFlagsObjCBaseTests.h"

#import "UIImage+Testing.h"

@implementation CountriesFlagsObjCBaseTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (BOOL)compareGeneratedFlag:(UIImage *)flag
                        with:(NSString *)source API_AVAILABLE(ios(14)) {
    return [self compareFlag:flag with:source] == 0.0f;
}

- (BOOL)compareGeneratedFlag:(UIImage *)flag
                        with:(NSString *)source
     maxPercentageDifference:(CGFloat)percentageDifference API_AVAILABLE(ios(14)) {
    return [self compareFlag:flag with:source] < percentageDifference;
}

- (CGFloat)compareFlag:(UIImage *)flag with:(NSString *)source API_AVAILABLE(ios(14)) {
    // SWIFTPM_MODULE_BUNDLE requires ios 14: https://github.com/swiftlang/swift-evolution/blob/main/proposals/0271-package-manager-resources.md
    NSString* path = [SWIFTPM_MODULE_BUNDLE pathForResource:source ofType:@"png"];
    XCTAssertTrue([path length] > 0);
    
    UIImage* testFlag = [UIImage imageWithContentsOfFile: path];
    XCTAssertNotNil(testFlag, @"Test flag is nil");

    return [flag percentageDifferenceWithImage:testFlag];
}

@end
