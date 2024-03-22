//
//  ProductCard.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-21.
//

import SwiftUI

struct ProductCard: View {
    @StateObject var productVM : ProductViewModel = ProductViewModel()
    @State var naviagte : Bool = false
    @State var selectedProduct : ProductList?
    
  
//    var product: Product
    var body: some View {
        ZStack(alignment: .topTrailing) {
//            ZStack(alignment: .bottom){
//                Image(selectedProduct?.imageURL ?? "")
//                    .resizable()
//                    .cornerRadius(20)
//                    .frame(width: 170)
//                    .scaledToFit()
//                
//                VStack(alignment: .leading){
//                    Text(selectedProduct?.name ?? "")
//                        .bold()
//                        .foregroundStyle(Color(.black))
////                    
////                    Text("Rs \(selectedProduct.price)")
////                        .font(.caption)
////                        .foregroundStyle(Color(.black))
////                      
//                    
//                }.padding()
//                    .frame(width: 170,alignment: .leading)
//                    .background(.white)
//                    .cornerRadius(20)
//                
//            }
//            .frame(width: 170,height: 280)
//            .shadow(radius: 3)
//            
//            Button(action: {
//                print("added to cart")
//            }, label: {
//                Image(systemName: "cart")
//                    .padding(8)
//                    .foregroundColor(.black)
//                    .background(.white)
//                    .cornerRadius(50)
//                    .padding()
//                    
//            })
        }
    }
}

#Preview {
    ProductCard()
}
