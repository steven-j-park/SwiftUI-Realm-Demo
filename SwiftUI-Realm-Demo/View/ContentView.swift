//
//  ContentView.swift
//  SwiftUI-Realm-Demo
//
//  Created by Steven Park on 4/25/22.
//

import SwiftUI

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
        ContentView()
    }
}
