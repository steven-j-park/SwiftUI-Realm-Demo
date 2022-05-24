##  Overview
This demo project is intended to serve as an example of Realm implementation in a mock e-commerce, SwiftUI iOS application.

##  How to Use
- Opening the project for the first time

  Download the zip and extract or clone into directory of your choosing then open the .xcodeproj file.

  Wait for the project to download the package dependencies for Realm and complete indexing. This will take a few minutes to complete.\
  If you try to build the project immediately after opening, you may encounter a build error until the packages have been downloaded.

- Realm

  A bundled Realm file has been included in this project and is set-up to be used by default.\
  On first run, the bundled realm file will be copied to your default Realm directory.

  To get your Realm directory, un-comment the below lines in SwiftUI_Realm_DemoApp.swift.\
  You can then navigate to the corresponding directory and manually update the data in it.
  
```swift
  let realm = try! Realm()
  print("Realm is located at:", realm.configuration.fileURL!)
```

## Preview
1. Submitting Orders

![Ordering](https://spark-project-resources.s3.amazonaws.com/SwiftUI-Realm-Demo/ordering.gif)

2. Reviewing Order Details

![Order Details](https://spark-project-resources.s3.amazonaws.com/SwiftUI-Realm-Demo/order_details.gif)
