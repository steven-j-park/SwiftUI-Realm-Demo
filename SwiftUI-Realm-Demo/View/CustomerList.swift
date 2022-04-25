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
        }
    }
}

struct CustomerList_Previews: PreviewProvider {
    static var previews: some View {
        sampleData()
        return CustomerList()
    }
    
    static func sampleData() {
        let realm = try! Realm()
        try! realm.write {
            realm.deleteAll()
            realm.add(Customer(value: ["name": "Tester McTesterson"]))
            realm.add(Customer(value: ["name": "John Doe"]))
            realm.add(Customer(value: ["name": "Steven Park"]))
        }
    }
}
