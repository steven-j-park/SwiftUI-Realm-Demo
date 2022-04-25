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
