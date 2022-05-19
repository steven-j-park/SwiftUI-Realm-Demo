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
        VStack {
            ForEach(items) { item in
                HStack {
                    Text(item.itemDescription)
                    Spacer()
                    Text(String(format: "%.2f", item.unitPrice))
                }
            }
            HStack {
                Spacer()
                Text(String(format: "%.2f", OrderDetailViewModel().getTotal(items: items)))
            }
        }
    }
}

extension OrderDetail {
    class OrderDetailViewModel {
        
        func getTotal(items: RealmSwift.List<Item>) -> Double {
            var total: Double = 0
            for item in items {
                total += item.unitPrice
            }
            
            return total
        }
    }
}

//struct OrderDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        OrderDetail()
//    }
//}
