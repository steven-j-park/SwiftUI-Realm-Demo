//
//  OrderDetail.swift
//  SwiftUI-Realm-Demo
//
//  Created by Steven Park on 5/18/22.
//

import SwiftUI
import RealmSwift

struct OrderDetail: View {
    @ObservedRealmObject var items: RealmSwift.List<Item>
    
    var body: some View {
        List {
            ForEach(items) { item in
                HStack {
                    Text(item.itemDescription)
                    Spacer()
                    Text(String(format: "%.2f", item.unitPrice))
                }
            }
            HStack {
                Spacer()
                Text("Total: \(String(format: "%.2f", OrderDetailViewModel().getTotal(items: items)))")
            }
        }
        .navigationTitle("Order Details")
    }
}
