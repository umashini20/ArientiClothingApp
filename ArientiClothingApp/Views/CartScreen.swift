//
//  CartScreen.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-21.
//

import SwiftUI

struct CartScreen: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView {
            Text("Cart Is Empty!")
        }
        .navigationTitle("Cart")
        .padding(.top)
    }
}

#Preview {
    CartScreen()
        .environmentObject(CartManager())
}
