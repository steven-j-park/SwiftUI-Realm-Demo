//
//  ContentView.swift
//  SwiftUI-Realm-Demo
//
//  Created by Steven Park on 4/25/22.
//

import SwiftUI
import RealmSwift

struct ContentView: View {
    
    
    var body: some View {
        TabView {
            CustomerList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                    Text("List")
                }
            SubmitOrder()
                .tabItem {
                    Label("Order", systemImage: "cart.fill.badge.plus")
                    Text("Order")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        sampleData()
        return ContentView()
    }
    
    static func sampleData() {
        let realm = try! Realm()
        try! realm.write {
            realm.deleteAll()
            realm.add(Customer(value: ["name": "Tester McTesterson"]))
            realm.add(Customer(value: ["name": "John Doe"]))
            realm.add(Customer(value: ["name": "Steven Park"]))
            
            realm.add(Item(value: ["itemDescription": "Toothbrush", "unitPrice": 1.00]))
            realm.add(Item(value: ["itemDescription": "Toothpaste", "unitPrice": 2.50]))
            realm.add(Item(value: ["itemDescription": "Toilet Paper", "unitPrice": 0.75]))
        }
    }
}
