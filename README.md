# iOS SDK Basic


A minimal Swift package providing a reusable SDK for iOS integration.

## Features
- Four demo view controllers that can be presented from a host app.
- Simple navigation: 1 ➜ 2 ➜ 3 ➜ 4 ➜ back.
- Written in UIKit for broad iOS compatibility.

## Requirements
- iOS 13.0+,
- Swift 5.9+.

## Add package dependency

Add the following to your `Package.swift`:

```swift
.package(url: "https://github.com/mohd14shoeb/iOS-SDK-Basic.git", from: "1.0.0"),
```

Then add the target as a dependency:

```swift
.target(name: "iOS_SDK_Basic", dependencies: ["iOS_SDK_Basic"]),
```

Or, if you’re using Swift Package Manager inside Xcode, follow the steps below.

### Using Swift Package Manager in Xcode

1. In Xcode, open your project.
2. Go to **File ➜ Swift Packages ➜ Add Package Dependency…**
3. Enter the repository URL: `https://github.com/mohd14shoeb/iOS-SDK-Basic.git`.
4. Choose a version rule (e.g., *Up to next major*). The package will resolve and be added automatically.
5. You can now `import iOS_SDK_Basic` and use the SDK classes.

## Usage

Import the SDK in the view controller where you want to present the demo:

```swift
import iOS_SDK_Basic

// To show the first screen:
SDKDemoManager.shared.showFirstScreen(from: self)
```

Make sure you call this from a view controller (e.g., in a button action or `viewDidAppear`).

## Architecture

The SDK consists of:
- `SDKDemoManager`: A singleton that provides the entry point to present the first screen.
- `FirstDemoViewController`, `SecondDemoViewController`, `ThirdDemoViewController`, `FourthDemoViewController`: Four view controllers forming a simple navigation flow.

## Navigation Flow

```
First Screen → Second Screen → Third Screen → Fourth Screen → (Back button returns to previous screen)
```

## Customization

Feel free to modify the view controllers to change the UI or add more functionality.

## Building the SDK

The SDK is intended for iOS only. Build it by opening the generated Xcode project in Xcode and building for an iOS simulator or device.

To generate an Xcode project for iOS, run:

```bash
swift package generate-xcodeproj --output ./iOS-SDK-Basic.xcodeproj
```

Then open the project in Xcode and select an iOS simulator as the build target.

## License

This SDK is provided as‑is for educational purposes.
