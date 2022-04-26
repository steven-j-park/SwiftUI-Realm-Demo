//
//  SubmitOrder.swift
//  SwiftUI-Realm-Demo
//
//  Created by Steven Park on 4/25/22.
//

import SwiftUI
import RealmSwift

struct SubmitOrder: View {
    @ObservedResults(Customer.self) var customers
    @ObservedResults(Item.self) var items
    
    @State private var selectedCustomer = 0
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Order for", selection: $selectedCustomer) {
                        ForEach(0..<customers.count, id: \.self) { index in
                            Text(customers[index].name)
                        }
                    }
                }
                Section("Items to Order") {
                    List {
                        ForEach(items) { item in
                            CheckView(title: item.itemDescription, unitPrice: String(format: "%.2f", item.unitPrice))
                        }
                    }
                }
                Button {
                    return
                } label: {
                    HStack {
                        Spacer()
                        Image(systemName: "cart.badge.plus")
                        Text("Order Now")
                        Spacer()
                    }
                }
            }
            .navigationTitle("Submit Order")
        }
    }
}

struct SubmitOrder_Previews: PreviewProvider {
    static var previews: some View {
        return SubmitOrder()
    }
}
