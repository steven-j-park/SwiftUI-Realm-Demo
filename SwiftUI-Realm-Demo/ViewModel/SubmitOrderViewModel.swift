//
//  SubmitOrderViewModel.swift
//  SwiftUI-Realm-Demo
//
//  Created by Steven Park on 5/1/22.
//

import SwiftUI
import RealmSwift

extension SubmitOrder {
    class ViewModel: ObservableObject {
        @Published var selectedItems: [Item] = []
        
        func updateSelectedItems(item: Item) {
            if (selectedItems.contains(item)) {
                selectedItems.removeAll(where: { $0 == item })
            }
            else {
                selectedItems.append(item)
            }
        }
        
        func orderItems(customer: Customer) -> Bool {
            let order = Order(value: ["orderedBy": customer])
            
            let realm = try! Realm()
            try! realm.write {
                realm.add(order)
            }
            
            return true
        }
    }
}
