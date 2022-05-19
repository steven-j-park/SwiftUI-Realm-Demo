//
//  OrderDetailViewModel.swift
//  SwiftUI-Realm-Demo
//
//  Created by Steven Park on 5/18/22.
//

import RealmSwift

extension OrderDetail {
    class OrderDetailViewModel {
        
        func getTotal(items: List<Item>) -> Double {
            var total: Double = 0
            for item in items {
                total += item.unitPrice
            }
            
            return total
        }
    }
}
