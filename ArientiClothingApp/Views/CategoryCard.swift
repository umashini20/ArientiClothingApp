//
//  CategoryCard.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-21.
//

import SwiftUI

struct CategoryCard: View {
    var category: Category
    //    var product: Product
    
    var body: some View {
        ZStack(alignment: .bottom){
            Image(category.image)
                .resizable()
                .cornerRadius(20)
                .frame(width: 170)
                .scaledToFit()
            
            VStack(alignment: .leading){
                Text(category.name)
                    .bold()
                
            }.padding()
                .frame(width: 170,alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(10)
            
        }
        .frame(width: 100,height: 250)
        .shadow(radius: 3)
    }
}
#Preview {
    CategoryCard(category: categoryList[0])
}
