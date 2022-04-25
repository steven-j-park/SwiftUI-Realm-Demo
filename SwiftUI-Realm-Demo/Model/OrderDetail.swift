//
//  OrderDetail.swift
//  SwiftUI-Realm-Demo
//
//  Created by Steven Park on 4/25/22.
//

import RealmSwift

class OrderDetail: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted(originProperty: "orderDetails") var order: LinkingObjects<Order>
    @Persisted(originProperty: "orderDetails") var item: LinkingObjects<Item>
}
