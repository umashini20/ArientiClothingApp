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
            if cartManager.cartItems.count > 0 {
                ForEach(cartManager.cartItems, id: \.product?.id){
                    cartItem in
                    ProductRow(product: cartItem.product, qty: cartItem.qty, productID: cartItem.product?.id ?? "")
                }
                HStack{
                    Text("Your cart total is ")
                    Spacer()
                    Text("Rs \(cartManager.total).00")
                        .bold()
                }
                .padding()
            } else {
                Text("Cart Is Empty!")
            }
            
        }
        .navigationTitle("Cart")
        .padding(.top)
    }
}

#Preview {
    CartScreen()
        .environmentObject(CartManager())
}
