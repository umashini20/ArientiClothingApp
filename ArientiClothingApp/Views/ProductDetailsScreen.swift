//
//  ProductDetailsScreen.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-22.
//

import SwiftUI

struct ProductDetailsScreen: View {
    var body: some View {
        NavigationView{
            ZStack{
                VStack(spacing: 0){
                  
                    Image("pic5")
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(width:.infinity, height: 425)
                        .cornerRadius(10)
                        .padding()
                    
                    VStack(alignment:.leading){
                        Text("Mid Dress")
                            .frame(maxWidth: 100,maxHeight: 5,alignment: .leading)
                            .font(.system(size: 20))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.title)
                            .padding()
                        Text("Mid Dress")
                            .frame(maxWidth: 100,maxHeight: 5,alignment: .leading)
                            .font(.system(size: 10))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.title)
                            .padding()
                    }
                    
                }
                
            }
        }
    }
}

#Preview {
    ProductDetailsScreen()
}
