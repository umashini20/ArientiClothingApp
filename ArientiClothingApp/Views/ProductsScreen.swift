//
//  ProductsScreen.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-21.
//

import SwiftUI

struct ProductsScreen: View {
    var numberOfProducts:Int
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    var body: some View {
        
        NavigationView{
            
            
            ScrollView {
                
                VStack{
                    
                    
                    ZStack{
                        VStack {
                            HStack {
                                Image(systemName: "line.horizontal.3")
                                    .imageScale(.large)
                                    .frame(width: 30)
                                Text("Dresses")
                                    .frame(width: 300,height: 19,alignment: .top)
                                    .font(.system(size: 24,weight: .regular))
                                .padding()
                            }
                            
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                
                                LazyVGrid(columns: columns, spacing: 20){
                                    ForEach(productList, id: \.id) {product in
                                        ProductCard(product:product)
                                    }
                                }.padding()
                                
                            })
                            
                        }
                    }
                    
                }
                
                
                
            }
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ZStack {
                        
                        HStack {
                            Text("Arienti")
                                .font(.system(size:35))
                                
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .frame(width: 280)
                            
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
                }
        }
        .navigationViewStyle(StackNavigationViewStyle())

    }
}

#Preview {
    ProductsScreen(numberOfProducts: 1)
}
