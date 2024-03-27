//
//  ProductsDressScreen.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-23.
//

import SwiftUI

struct LoginPopUpScreen: View {
    var body: some View {
        ZStack {
            
            VStack{
                NavigationLink {
                   
                } label: {
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
                }
                
                VStack {
                    
                    
                                
                                VStack {
                                   
                                    Text("Login Required")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                        .padding(20)
                                    VStack(spacing: 20) {
                                        
                                        
                                        Text("Please login to checkout.")
                                            .foregroundColor(.black)
                                            .padding()
                                    }
                                    .padding()
                                    .background(Color.lightPink.opacity(0.7))
                                    .cornerRadius(20)
                                    .padding()
                                    
                                    Spacer()
                                }
                    
                    
                }
                .frame(width: 300, height: 240)
                .background(Color(.systemBackground))
                .cornerRadius(10)
                .shadow(radius: 40)
            }.navigationTitle("")
                .navigationBarBackButtonHidden(true)
        }
       
    }
}

#Preview {
    LoginPopUpScreen()
}
