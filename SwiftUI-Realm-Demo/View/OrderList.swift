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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct OrderList_Previews: PreviewProvider {
    static var previews: some View {
        OrderList()
    }
}
