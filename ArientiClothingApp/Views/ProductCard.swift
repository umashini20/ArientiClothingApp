//
//  ProductCard.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-21.
//

import SwiftUI

struct ProductCard: View {
    var product: Product
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom){
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 170)
                    .scaledToFit()
                
                VStack(alignment: .leading){
                    Text(product.name)
                        .bold()
                        .foregroundStyle(Color(.black))
                    
                    Text("Rs \(product.price)")
                        .font(.caption)
                        .foregroundStyle(Color(.black))
                      
                    
                }.padding()
                    .frame(width: 170,alignment: .leading)
                    .background(.ultraThinMaterial)
                    .cornerRadius(20)
                
            }
            .frame(width: 170,height: 280)
            .shadow(radius: 3)
            
            Button(action: {
                print("added to cart")
            }, label: {
                Image(systemName: "cart")
                    .padding(8)
                    .foregroundColor(.black)
                    .background(.white)
                    .cornerRadius(50)
                    .padding()
                    
            })
        }
    }
}

#Preview {
    ProductCard(product: productList[0])
}
