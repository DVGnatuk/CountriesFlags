//
//  UIImage+Extension.m
//  CountriesFlags
//

#import "UIImage+Extension.h"

@implementation UIImage (CountriesFlags)

+ (UIImage * _Nullable)flagForCountry:(CountriesFlags)country {
    switch (country) {
        case Ukraine: {
            return nil;
        }
            break;
            
        default: return nil;
    }
}

@end
