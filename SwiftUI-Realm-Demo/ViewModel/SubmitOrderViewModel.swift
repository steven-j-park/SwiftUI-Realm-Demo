//
//  SubmitOrderViewModel.swift
//  SwiftUI-Realm-Demo
//
//  Created by Steven Park on 5/1/22.
//

import SwiftUI

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
        
        func orderItems() {
            
        }
    }
}
