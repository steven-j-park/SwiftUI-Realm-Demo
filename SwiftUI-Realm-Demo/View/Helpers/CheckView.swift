//
//  CheckView.swift
//  SwiftUI-Realm-Demo
//
//  Created by Steven Park on 4/25/22.
//

import SwiftUI

struct CheckView: View {
    @EnvironmentObject var viewModel: SubmitOrder.ViewModel
    
    @State var item: Item
    var isSelected: Bool {
        viewModel.selectedItems.contains(item)
    }
    
    var body: some View {
        Button(action: {
            viewModel.updateSelectedItems(item: item)
        }) {
            HStack {
                Image(systemName: isSelected ? "checkmark.square": "square")
                HStack {
                    Text(item.itemDescription)
                    Spacer()
                    Text("- $\(String(format: "%.2f", item.unitPrice))")
                        .frame(width: 65, alignment: .leading)
                }
                .foregroundColor(.black)
                Spacer()
            }
        }
    }
}

struct CheckView_Previews: PreviewProvider {
    
    static let viewModel = SubmitOrder.ViewModel()
    
    static var previews: some View {
        Group {
            CheckView(item: Item(value: ["itemDescription": "Toothbrush", "unitPrice": 1.00]))
            CheckView(item: Item(value: ["itemDescription": "Toilet Paper", "unitPrice": 2.50]))
        }
        .environmentObject(viewModel)
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
