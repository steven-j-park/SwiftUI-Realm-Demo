//
//  SubmitOrder.swift
//  SwiftUI-Realm-Demo
//
//  Created by Steven Park on 4/25/22.
//

import SwiftUI
import RealmSwift

struct SubmitOrder: View {
    @ObservedResults(Customer.self) var customers
    @ObservedResults(Item.self) var items
    
    @StateObject var viewModel = ViewModel()
    
    @State private var selectedCustomer = 0
    @State private var selected = false
    
    @State private var showOrderSubmitted = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Form {
                    Section {
                        Picker("Order for", selection: $selectedCustomer) {
                            ForEach(0..<customers.count, id: \.self) { index in
                                Text(customers[index].name)
                            }
                        }
                    }
                    Section("Items to Order") {
                        List {
                            ForEach(items) { item in
                                CheckView(item: item)
                            }
                        }
                        .environmentObject(viewModel)
                    }
                    
                    Button {
                        if viewModel.orderItems(customer: customers[selectedCustomer]) == true {
                            showOrderSubmitted = true
                            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                                showOrderSubmitted = false
                            }
                        }
                    } label: {
                        HStack {
                            Spacer()
                            Image(systemName: "cart.badge.plus")
                            Text("Order Now")
                            Spacer()
                        }
                    }
                }
                .navigationTitle("Submit Order")
                if showOrderSubmitted {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.gray)
                        .frame(width: 300, height: 30)
                        .opacity(0.25)
                        .overlay(
                            Text("Order Submitted")
                                .font(.headline)
                        )
                }
            }
        }
    }
}

struct SubmitOrder_Previews: PreviewProvider {
    static var previews: some View {
        SubmitOrder()
    }
}
