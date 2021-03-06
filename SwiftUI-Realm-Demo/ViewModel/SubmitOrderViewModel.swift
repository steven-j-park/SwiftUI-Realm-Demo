//
//  SubmitOrderViewModel.swift
//  SwiftUI-Realm-Demo
//
//  Created by Steven Park on 5/1/22.
//

import SwiftUI
import RealmSwift

extension SubmitOrder {
    class SubmitOrderViewModel: ObservableObject {
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
            let order = Order()
            
            for item in selectedItems {
                if let thawedItem = item.thaw() {
                    order.orderDetails.append(thawedItem)
                }
            }
            
            if let customerRec = customer.thaw() {
                let realm = try! Realm()
                try! realm.write {
                    customerRec.orders.append(order)
                }
                return true
            }
            return false
        }
    }
}
