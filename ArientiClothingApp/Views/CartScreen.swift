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
        VStack{
            Text("Cart")
                .bold()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
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
                HStack(spacing: 16){
                    Image(systemName: "location.circle.fill")
                         .resizable()
                         .scaledToFit()
                         .frame(width: 24, height: 24)
                     
                     Text("Delivery Address:  _____________")
                         .font(.system(size: 18, weight: .semibold))
                         .foregroundStyle(.black)
                         .fontWeight(.medium)
                         .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                     
                    
                }
                .padding(20)
                NavigationLink{
                    LoginPopUpScreen()
                } label: {
                    Text("CHECKOUT")
                        .font(.system(size: 16, weight: .semibold))
                        .frame(maxWidth: 290, minHeight: 40, alignment: .center)
                        .background(.lightPink)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.bottom,20)
               
            } else {
                Text("Cart Is Empty!")
            }
            
        }
        .padding(.top)
    }
}

#Preview {
    CartScreen()
        .environmentObject(CartManager())
}
