//
//  SwiftUI_Realm_DemoApp.swift
//  SwiftUI-Realm-Demo
//
//  Created by Steven Park on 4/25/22.
//

import SwiftUI
import RealmSwift

@main
struct SwiftUI_Realm_DemoApp: SwiftUI.App {
    var realmURL: URL
    
    init() {
        realmURL = Bundle.main.url(forResource: "bundled", withExtension: "realm")!
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.realmConfiguration, Realm.Configuration(fileURL: realmURL))
        }
    }
}
