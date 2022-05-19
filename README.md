##  How to Use
- Opening the project for the first time

  Download the zip and extract or pull into directory of your choosing then open the .xcodeproj file.

  Wait for the project to download the package dependencies for Realm and complete indexing. This will take a few minutes to complete.
  If you try to build the project immediately after opening, you may encounter a build error until the packages have been downloaded.

- Realm

  A bundled Realm file has been included in this project and is set-up to be used by default.
  On first run, the bundled realm file will be copied to your default Realm directory.

  To get your Realm directory, un-comment the below lines in SwiftUI_Realm_DemoApp.swift.
  Note: A new Realm (in a new directory) will be created for each device you run the project on.
  
```swift
  let realm = try! Realm()
  print("Realm is located at:", realm.configuration.fileURL!)
```
