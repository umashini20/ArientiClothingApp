//
//  ProductCard.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-21.
//

import SwiftUI
import Kingfisher

struct ProductCard: View {
    @EnvironmentObject var cartManager: CartManager

  
    var product: Product?
    var body: some View {
        
    ZStack(alignment: .topTrailing) {
       ZStack(alignment: .bottom){
           KFImage.url(URL(string: "https://www.arienti.lk/cdn/shop/files" + (product?.imageURL ?? "")))
               .resizable()
               .cornerRadius(20)
               .frame(width: 170,height: 250)
               .scaledToFit()
           
           VStack(alignment: .leading){
               Text(product?.name ?? "")
                   .bold()
                   .foregroundStyle(Color(.black))

               Text("Rs \(product?.price ?? 0)")
                       .font(.caption)
                       .foregroundStyle(Color(.black))

               
           }.padding()
               .frame(width: 170,alignment: .leading)
               .background(.white)
               .cornerRadius(10)
             
           
       }
       .frame(width: 170,height: 280)
       .shadow(radius: 3)
      
     
      
       Button{
           cartManager.addToCart(product: product!)
       } label: {
           Image(systemName: "cart")
               .padding(8)
               .foregroundColor(.black)
               .background(.white)
               .cornerRadius(50)
               .padding()
               
       }
    }
    }
}

#Preview {
    ProductCard()
        .environmentObject(CartManager())
}
