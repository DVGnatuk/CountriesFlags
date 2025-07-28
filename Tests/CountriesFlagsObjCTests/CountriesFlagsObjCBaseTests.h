//
//  CountriesFlagsObjCBaseTests.h
//  CountriesFlags
//

#import <XCTest/XCTest.h>

@interface CountriesFlagsObjCBaseTests : XCTestCase

- (BOOL)compareGeneratedFlag:(UIImage *)flag
                        with:(NSString *)source API_AVAILABLE(ios(14));
- (BOOL)compareGeneratedFlag:(UIImage *)flag
                        with:(NSString *)source
     maxPercentageDifference:(CGFloat)percentageDifference API_AVAILABLE(ios(14));

@end
