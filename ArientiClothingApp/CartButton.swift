//
//  CartButton.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-25.
//

import SwiftUI

struct CartButton: View {
    var numberOfProducts:Int
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "cart").imageScale(.large)
                .foregroundColor(.lightPink)
                .padding(.top,5)
            
            
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption2).bold()
                    .foregroundColor(.white)
                    .frame(width: 15,height: 15)
                    .background(Color(.creamPink))
                    .cornerRadius(50)
            }
        }
    }
}

#Preview {
    CartButton(numberOfProducts: 1)
}
