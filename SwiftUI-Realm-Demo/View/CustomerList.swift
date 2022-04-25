//
//  CustomerList.swift
//  SwiftUI-Realm-Demo
//
//  Created by Steven Park on 4/25/22.
//

import SwiftUI
import RealmSwift

struct CustomerList: View {
    @ObservedResults(Customer.self) var customers
    
    var body: some View {
        NavigationView {
            List {
                ForEach(customers) { customer in
                    Text(customer.name)
                }
            }
            .navigationTitle("Customers")
        }
    }
}

struct CustomerList_Previews: PreviewProvider {
    static var previews: some View {
        CustomerList()
    }
}
