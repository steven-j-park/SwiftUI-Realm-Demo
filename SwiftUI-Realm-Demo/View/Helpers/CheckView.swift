//
//  CheckView.swift
//  SwiftUI-Realm-Demo
//
//  Created by Steven Park on 4/25/22.
//

import SwiftUI

struct CheckView: View {
    @State var isChecked: Bool = false
    var title: String
    var unitPrice: String
    
    var body: some View {
       Button(action: toggle){
           HStack{
               Image(systemName: isChecked ? "checkmark.square": "square")
               HStack {
                   Text(title)
                   Spacer()
                   Text("- $\(unitPrice)")
                       .frame(width: 65, alignment: .leading)
               }
               .foregroundColor(.black)
               Spacer()
           }
       }
    }
    
    func toggle() {
        isChecked = !isChecked
    }
}

struct CheckView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CheckView(title: "Toothbrush", unitPrice: String(format: "%.2f", 1.00))
            CheckView(title: "Toilet Paper", unitPrice: String(format: "%.2f", 2.50))
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
