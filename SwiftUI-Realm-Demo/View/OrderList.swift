//
//  OrderList.swift
//  SwiftUI-Realm-Demo
//
//  Created by Steven Park on 5/13/22.
//

import SwiftUI
import RealmSwift

struct OrderList: View {
    @ObservedRealmObject var customer: Customer
    
    var body: some View {
        List {
            ForEach(customer.orders) { order in
                NavigationLink {
                    OrderDetail(items: order.orderDetails)
                } label: {
                    Text("\(OrderListViewModel().getFormattedDateTime(date: order.orderDate))")
                }
            }
        }
        .navigationTitle("Orders")
    }
}
