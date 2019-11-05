# AppSamurai Attribution SDK
[![alt text](https://appsamurai.com/wp-content/uploads/2018/10/as_dark_logotype-8.png "AppSamurai")](https://www.appsamurai.com)
## Getting Started
AppSamurai Attribution SDK targets iOS 10 or higher. 

### Using CocoaPods (preferred)
AppSamurai Attribution SDK is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:
```ruby
pod 'ASAttributionSDK'
```
It is also required to set `Always Embed Swift Libraries` to `Yes` from `Build Settings` for projects written in Objective-C
## ASAttributionSDK Import
Application needs to import related modules to use ASAttributionSDK. Add following lines to `import`’s to achieve this;

```swift
import ASAttributionSDK
```
```objc
@import ASAttributionSDK;
```
You can check version of SDK with `getSDKVersion` method
```swift
ASAttribution.getSDKVersion()
```
```objc
[ASAttribution getSDKVersion];
```
## ASAttributionSDK Initialization
ASAttributionSDK is required for tracking. Application cannot track any information before ASAttributionSDK initialization is complete.
In application’s `didFinishLaunchingWithOptions` callback, call  `ASAttribution.initialize` function with `applicationId` parameter. This parameter should be your application id from [AppSamurai User Dashboard](https://www.appsamurai.com), you can use your application id for integration purposes. Check following code for sample;
```swift
ASAttribution.initialize(applicationId: "your-user-id")
```
```objc
[ASAttribution initialize:@"your-user-id"];
```
## Log Level
ASAttributionSDK logging level can be changed with `setLogLevel` after  `ASAttribution.initialize` call.
```swift
ASAttribution.setLogLevel(logLevel: .debug)
```
```objc
[ASAttribution setLogLevel:ASLogLevelDebug];
```
## Custom Event Tracking
Using ASAttributionSDK, you are able to track the frequency of custom events by placing the following code piece into your own application code. You can also attach data to your events. If you are planning to attach data to your event, make sure your dictionary is JSON serializable.

```swift
ASAttribution.track("event-name")
ASAttribution.track("event-name", data: ["string-key": json-serializable-any, ...])
```
```objc
[ASAttribution trackWithEventName:@"event-name"];
[ASAttribution trackWithEventName:@"event-name" data:@{@"string-key": @json-serializable-any, ...}];
```
## Sample Usages
Sample usages can be found in the repository for both Swift and Objective C.

## Author
App Samurai Mobile Team, mobile@appsamurai.com
## License
Copyright 2018 App Samurai Inc.
[![alt text](https://appsamurai.com/wp-content/uploads/2014/12/web_home_cta_2.png "AppSamurai")](https://www.appsamurai.com)
