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
        /* --- Get filepath for your realm --- */
        //let realm = try! Realm()
        //print("Realm is located at:", realm.configuration.fileURL!)
        
        /* --- Use bundled realm --- */
        realmURL = Bundle.main.url(forResource: "seed", withExtension: "realm")!
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.realmConfiguration, Realm.Configuration(seedFilePath: realmURL))
        }
    }
}
