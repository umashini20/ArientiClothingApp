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
     
                VStack{
                  
//                    KFImage.url(URL(string: "https://www.arienti.lk/cdn/shop/files" + (selectProduct?.imageURL ?? "")))
                    VStack{
                        
                    }
                    .padding()
                    VStack {
               KFImage.url(URL(string: "https://www.arienti.lk/cdn/shop/files" + (selectProduct?.imageURL ?? "")))
//                        Image("pic2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 400, height: 300)
                    }.frame(maxWidth: 400,maxHeight: 300)
                    
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
                            .font(.system(size: 10))
                            .fontWeight(.thin)
                           
                    }.padding([.leading, .trailing], 20) 
                    
                    Button{
                        print("taped")
                    } label: {
                        Text("ADD TO CART")
                            .font(.system(size: 16, weight: .semibold))
                            .frame(maxWidth: 270, minHeight: 40, alignment: .center)
                            .background(.black)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                    }
                    .padding(.bottom,20)
                    
                }
                .frame(width: 300, height: 540)
                        .background(Color(.systemBackground))
                        .cornerRadius(10)
                        .shadow(radius: 40)
    
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
                                   }
                                 
                               
                
            }
        }


#Preview {
    ProductDetailsScreen(selectProduct: .constant(MockData.sampleProduct),isShowingDetails:.constant(true))
}
