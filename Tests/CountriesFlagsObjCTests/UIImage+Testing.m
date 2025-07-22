//
//  UIImage.m
//  

#import "UIImage+Testing.h"

@implementation UIImage (Testing)

- (CGFloat)percentageDifferenceWithImage:(UIImage *)otherImage {
    CGImageRef image1 = self.CGImage;
    CGImageRef image2 = otherImage.CGImage;
    if (image1 == nil || image2 == nil) return 100.0f; // Or handle error appropriately
    
    size_t width1 = CGImageGetWidth(image1);
    size_t height1 = CGImageGetHeight(image1);
    size_t width2 = CGImageGetWidth(image2);
    size_t height2 = CGImageGetHeight(image2);
    
    if (width1 != width2 || height1 != height2) {
        return 100.0f; // Images must have the same dimensions
    }
        
    size_t dataSize = width1 * height1 * 4;
    unsigned char pixelBuffer1[dataSize];
    unsigned char pixelBuffer2[dataSize];
    size_t bitsPerComponent = 8;
    
    CGContextRef context1 = CGBitmapContextCreate(&pixelBuffer1,
                                                  width1,
                                                  height1,
                                                  bitsPerComponent,
                                                  width1 * 4,
                                                  CGColorSpaceCreateDeviceRGB(),
                                                  kCGImageAlphaPremultipliedLast);
    CGContextRef context2 = CGBitmapContextCreate(&pixelBuffer2,
                                                  width2,
                                                  height2,
                                                  bitsPerComponent,
                                                  width2 * 4,
                                                  CGColorSpaceCreateDeviceRGB(),
                                                  kCGImageAlphaPremultipliedLast);

    CGContextDrawImage(context1, CGRectMake(0, 0, width1, height1), image1);
    CGContextDrawImage(context2, CGRectMake(0, 0, width2, height2), image2);

    NSUInteger differingPixelCount = 0;
    for (size_t i = 0; i < dataSize; i++) {
        if (pixelBuffer1[i] != pixelBuffer2[i]) {
            differingPixelCount += 1;
        }
    }
    
    return ((CGFloat)differingPixelCount / (CGFloat)dataSize) * 100.0f;
}

@end
