//
//  Order.swift
//  SwiftUI-Realm-Demo
//
//  Created by Steven Park on 4/25/22.
//

import Foundation
import RealmSwift

class Order: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var orderDate = Date()
    
    @Persisted var orderDetails: List<OrderDetail>
    
    @Persisted(originProperty: "orders") var orderedBy: LinkingObjects<Customer>
}
