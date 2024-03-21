//
//  HomeScreen.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-21.
//

import SwiftUI

struct HomeScreen: View {
    var numberOfProducts:Int
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    var body: some View {
        NavigationView{
            
            
            ScrollView {
                
                VStack{
                    
                    VStack {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            ZStack{
                                VStack{
                                    Image("promo")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 390,height: .infinity)
                                }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: .infinity,alignment: .topLeading)
                                   
                                
                            }.frame(maxWidth: 370)
                        })
                    }.padding()
                    
                    ZStack{
                        VStack {
                            Text("Best Sellers")
                                .frame(width: 320,height: 19,alignment: .leading)
                                .font(.system(size: 22,weight: .medium))
                                .padding()
                            
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                
                                LazyVGrid(columns: columns, spacing: 20){
                                    ForEach(bestSellerProductList, id: \.id) {bestSellerProduct in
                                        BestSellerProductCard(bestSellerProduct:bestSellerProduct)
                                    }
                                }.padding()
                                
                            })
                            
                        }
                    }
                    
                    ZStack {
                        VStack {
                            Text("Shop by Category")
                                .frame(width: 320,height: 19,alignment: .leading)
                                .font(.system(size: 22,weight: .medium))
                                .padding()
                            
                            LazyVGrid(columns: columns, spacing: 20){
                                ForEach(categoryList, id: \.id) {category in
                                    CategoryCard(category: category)
                                }
                            }.padding()
                        }
                    }
                }
                
                
                
            }.navigationTitle("Arienti")
                .toolbar {
                    ZStack(alignment: .topTrailing){
                        Image(systemName: "cart").imageScale(.large)
                            .foregroundColor(.lightPink)
                            .padding(.top, 5)
                        
                        if numberOfProducts > 0 {
                            Text("\(numberOfProducts)")
                                .font(.caption2).bold()
                                .foregroundColor(.white)
                                .frame(width: 15,height: 15)
                                .background(Color(.creamPink))
                                .cornerRadius(50)
                        }
                    }
                }
        }
        .navigationViewStyle(StackNavigationViewStyle())

    }
}

#Preview {
    HomeScreen(numberOfProducts: 1)
}
