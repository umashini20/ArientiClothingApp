//
//  SwiftUIView.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-27.
//

import SwiftUI

struct LoginPopUpScreen: View {
    var body: some View {
        ZStack {
           
            VStack{
                Button(action: {
                   
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
                  
                        
                     
                               
                        }.padding([.leading, .trailing], 20)
                        
             
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
    LoginPopUpScreen()
}
