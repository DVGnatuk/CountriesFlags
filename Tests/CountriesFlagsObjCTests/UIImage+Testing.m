//
//  UIImage.m
//  

#import "UIImage+Testing.h"

@implementation UIImage (Testing)

-(CGFloat) percentageDifferenceWithImage:(UIImage *)otherImage {
    return 0;
}

//func percentageDifference(with otherImage: UIImage) -> CGFloat {
//    guard let image1 = self.cgImage, let image2 = otherImage.cgImage else {
//        return 100.0 // Or handle error appropriately
//    }
//
//    let width1 = image1.width
//    let height1 = image1.height
//    let width2 = image2.width
//    let height2 = image2.height
//
//    if width1 != width2 || height1 != height2 {
//        return 100.0 // Images must have the same dimensions
//    }
//
//    let dataSize = width1 * height1 * 4
//    var pixelBuffer1 = [UInt8](repeating: 0, count: dataSize)
//    var pixelBuffer2 = [UInt8](repeating: 0, count: dataSize)
//
//    let context1 = CGContext(data: &pixelBuffer1, width: width1, height: height1, bitsPerComponent: 8, bytesPerRow: width1 * 4, space: CGColorSpaceCreateDeviceRGB(), bitmapInfo: CGImageAlphaInfo.premultipliedLast.rawValue)!
//    let context2 = CGContext(data: &pixelBuffer2, width: width2, height: height2, bitsPerComponent: 8, bytesPerRow: width2 * 4, space: CGColorSpaceCreateDeviceRGB(), bitmapInfo: CGImageAlphaInfo.premultipliedLast.rawValue)!
//
//    context1.draw(image1, in: CGRect(x: 0, y: 0, width: width1, height: height1))
//    context2.draw(image2, in: CGRect(x: 0, y: 0, width: width2, height: height2))
//
//    var differingPixelCount = 0
//
//    for i in 0..<dataSize {
//        if pixelBuffer1[i] != pixelBuffer2[i] {
//            differingPixelCount += 1
//        }
//    }
//
//    return (CGFloat(differingPixelCount) / CGFloat(dataSize)) * 100.0
//}

@end
