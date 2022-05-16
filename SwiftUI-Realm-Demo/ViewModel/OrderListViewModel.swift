//
//  OrderListViewModel.swift
//  SwiftUI-Realm-Demo
//
//  Created by Steven Park on 5/15/22.
//

import Foundation

extension OrderList {
    class OrderListViewModel {
        func getFormattedDateTime(date: Date) -> String {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
            return dateFormatter.string(from: date)
        }
    }
}
