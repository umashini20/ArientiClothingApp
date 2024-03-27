//
//  ProductDetailsScreen.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-22.
//

import SwiftUI
import Kingfisher

struct ProductDetailsScreen: View {
    
    @EnvironmentObject var cartManager: CartManager
    @Binding var selectProduct : Product?
    @Binding var isShowingDetails: Bool
    @Binding var isSelected: Bool
    var product: Product?
    var body: some View {
     
        ZStack {
           
            VStack{
                Button(action: {
                    isSelected = false
                    isShowingDetails = false
                }, label: {
                    ZStack(alignment: .leading){
                        Circle()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.white)
                            .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                        
                        Image(systemName: "xmark")
                            .imageScale(.small)
                            .frame(width: 44, height: 64)
                            .foregroundColor(.black)
                    }
                })
               
                        VStack {
                   KFImage.url(URL(string: "https://www.arienti.lk/cdn/shop/files" + (selectProduct?.imageURL ?? "")))
                            //Image("pic2")
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
                                .padding(2)
                            Text("Available Sizes")
                                .multilineTextAlignment(.center)
                                .font(.system(size: 10))
                                .fontWeight(.thin)
                            Text("UK8 UK10 UK11 UK12 UK 14")
                                .multilineTextAlignment(.center)
                                .font(.system(size: 10))
                                .fontWeight(.medium)
                                .padding(2)
                               
                        }.padding([.leading, .trailing], 20) 
                        
                        Button{
                            cartManager.addToCart(product: selectProduct!)
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
        }.navigationTitle("")
            .navigationBarBackButtonHidden(true)
    
       
                                 
                               
                
            }
        }


#Preview {
    ProductDetailsScreen(selectProduct: .constant(MockData.sampleProduct),isShowingDetails:.constant(true), isSelected: .constant(true))
}
