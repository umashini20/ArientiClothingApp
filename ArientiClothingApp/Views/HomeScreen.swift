//
//  HomeScreen.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-21.
//

import SwiftUI

struct HomeScreen: View {
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    var body: some View {
        NavigationView{
            
            
            ScrollView {
                
                VStack{
                    HStack{
                        Text("Arienti")
                            .frame(width: 320,height: 120,alignment: .leading)
                            .font(.system(size: 30, weight: .bold))
                        Button(action: {}, label: {
                            Image(systemName: "line.horizontal.3").imageScale(.large)
                                .foregroundColor(.lightPink)
                            
                        })
                    }.frame(width: 150,height: 50)
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        ZStack{
                            VStack{
                                Text(" New Arrival \n Explore Our Newest Arrivals! Dive into the Latest Trends")
                                Image("promo")
                                    .resizable()
                            }.foregroundColor(.white)
                                .font(.system(size: 16, weight: .semibold))
                                .frame(maxWidth: 370, minHeight: 50,alignment: .leading)
                                .background(.gray1)
                                .cornerRadius(15)
                        }.frame(maxWidth: 370)
                        
                        
                        
                        
                        
                        
                        
                    })
                    
                    LazyVGrid(columns: columns, spacing: 20){
                        ForEach(categoryList, id: \.id) {category in
                            CategoryCard(category: category)
                        }
                    }.padding()
                }
                
                
                
            }
        }

    }
}

#Preview {
    HomeScreen()
}
