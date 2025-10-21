# CountriesFlags

The CountriesFlags generates flags for countries on the fly, without reading data from the disk.

## Requirements

SwiftPM: 5.7+  
Swift: 5+  
UI libraries: UIKit, ~~SwiftUI~~  
Xcode: 14.2+  
iOS/iPadOS: 13.0+ ([12.2+ for Xcode 10.2 and swift 5.0+](https://xcodereleases.com/?scope=release) and [10.0+ for obj-c](https://xcodereleases.com/?scope=release) if add the library to a project manually)  
macOS (Designed for iPad): 10.15+ (requires Apple Silicone CPU)  

## Installation

### [Swift Package Manager](https://swift.org/package-manager/)

If you want to use the Swift Package Manager as integration method, either use Xcode to add the package dependency or add the following dependency to your Package.swift:

```swift
.package(url: "https://github.com/DVGnatuk/CountriesFlags.git", from: "<version>"),
```

Replace `<version>` with the desired minimum or exact version.

> [!IMPORTANT]
> Select `CountriesFlags` package product for Swift or `CountriesFlagsObjC` for Objective-C.

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
@import CountriesFlagsObjC;

UIImage* image = [UIImage flagForCountry:CountriesFlagsUkraine size:imageSize)]
```

## Code style

To check installed packages:

```bash
brew list
```

### Swift

To enforce Swift style and conventions the library uses [SwiftLint](https://github.com/realm/SwiftLint).  
| macOS version | max version |
| ------------- | ----------- |
| macOS 13+     | 0.61.0      |
| macOS 12.7.6  | 0.46.0      |

SwiftLint should be installed locally on mac:

```bash
brew install swiftlint
```
To find all the available swiftlint rules:

```bash
swiftlint rules
```

### Objective-C

| macOS version | max version |
| ------------- | ----------- |
| macOS 13+     | 24.01       |
| macOS 12.7.6  | 22.02       |

OCLint should be installed locally on mac:

```bash
brew install oclint
```
