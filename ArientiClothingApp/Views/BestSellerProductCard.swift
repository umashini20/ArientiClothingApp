//
//  BestSellerProductCard.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-21.
//

import SwiftUI
import Kingfisher

struct BestSellerProductCard: View {
    
    @StateObject var productVM : BestSellerViewModel = BestSellerViewModel()
    @State var naviagte : Bool = false
    @State var selectedBestSellerProduct : BestSellerProductList?
    
//    var bestSellerProduct: BestSellerProduct
    var body: some View {
        ZStack(alignment: .topTrailing) {
//            ZStack(alignment: .bottom){
//                Image(bestSellerProduct.image)
//                    .resizable()
//                    .cornerRadius(20)
//                    .frame(width: 170)
//                    .scaledToFit()
//                
//                VStack(alignment: .leading){
//                    Text(bestSellerProduct.name)
//                        .bold()
//                        .foregroundStyle(Color(.black))
//                    
//                    Text("Rs \(bestSellerProduct.price)")
//                        .font(.caption)
//                        .foregroundStyle(Color(.black))
//                      
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
    BestSellerProductCard()
}
