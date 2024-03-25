//
//  ProductDetailsScreen.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-22.
//

import SwiftUI
import Kingfisher

struct ProductDetailsScreen: View {
    
    
    @Binding var selectProduct : Product?
    @Binding var isShowingDetails: Bool
    
    var body: some View {
     
                VStack(spacing: 0){
                  
                    KFImage.url(URL(string: "https://www.arienti.lk/cdn/shop/files" + (selectProduct?.imageURL ?? "")))
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 270)
                    
                    VStack(alignment:.leading){
                        Text(selectProduct?.name ?? "")
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                            .font(.title2)
                        Text("Rs\(Int(selectProduct?.price ?? 0))")
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                            .font(.title2)
                        Text(selectProduct?.description ?? "")
                            .multilineTextAlignment(.center)
                            .font(.body)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding()
                    }
                    Spacer()
                    
                    Button{
                        print("taped")
                    } label: {
                        Text("ADD TO CART")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .background(.black)
                    }
                    .padding(.bottom,30)
                    
                }
                .frame(width: 300, height: 525)
                        .background(Color(.systemBackground))
                        .cornerRadius(15)
                        .shadow(radius: 40)
                        .overlay(
                                    Button{
                                       isShowingDetails = false
                                   } label: {
                                       ZStack{
                                                  Circle()
                                                      .frame(width: 30, height: 30)
                                                      .foregroundColor(.white)
                                                      .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                                                  
                                                  Image(systemName: "xmark")
                                                      .imageScale(.small)
                                                      .frame(width: 44, height: 44)
                                                      .foregroundColor(.black)
                                              }
                                   },
                                   alignment: .topTrailing
                               )
                
            }
        }


#Preview {
    ProductDetailsScreen(selectProduct: .constant(MockData.sampleProduct),isShowingDetails:.constant(true))
}
