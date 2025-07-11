# CountriesFlags

CountriesFlags generate flags for ~~every~~ country (in progress now).

## Requirements

UIKit:  
~~SwiftUI: iOS 13.0+~~  
Xcode: 14.2+  
iOS: 13.0+  
macOS:

## Installation

### [Swift Package Manager](https://swift.org/package-manager/)

If you want to use the Swift Package Manager as integration method, either use Xcode to add the package dependency or add the following dependency to your Package.swift:

```swift
.package(url: "https://github.com/DVGnatuk/CountriesFlags.git", from: "1.0.0"),
```

### Manual

If you want to install the CountriesFlags manually:
* Download the source code;
* Drag&Drop the `CountriesFlags` folder for swift, or `CountriesFlagsObjC` folder for Objective-C, to the project.

## Usage

### Swift
```swift
import CountriesFlags

let image = UIImage.flag(for: .Austria, with: imageSize)
```
### Objective-C
```objectivec
#import <CountriesFlags/CountriesFlags.h>

UIImage* image = [UIImage flagForCountry:Austria size:imageSize)]
```
