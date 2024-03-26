//
//  ProductRow.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-25.
//

import SwiftUI
import Kingfisher

struct ProductRow: View {
    
    @EnvironmentObject var cartManager: CartManager
    var product: Product?
    var qty: Int
    var productID: String
    
    var body: some View {
        HStack(spacing: 20) {
            KFImage.url(URL(string: "https://www.arienti.lk/cdn/shop/files" + (product?.imageURL ?? "")))
//            Image("pic2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .leading, spacing: 10){
                Text(product?.name ?? "")
                    .bold()
                
                Text("Rs \(product?.price ?? 0)")
                Text("Quantity: \(qty)")
                    .foregroundColor(.gray)
            }
            Spacer()
            
            Image(systemName: "trash")
                .foregroundColor(.red)
                .onTapGesture {
                    cartManager.removeFromCart(productID: productID)
                }
        }
        .padding(.horizontal)
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
    }
}

#Preview {
    ProductRow(product:MockData.sampleProduct, qty: 1, productID: MockData.sampleProduct.id)
        .environmentObject(CartManager())
}
