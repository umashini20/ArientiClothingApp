//
//  SearchScreen.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-21.
//

import SwiftUI

struct SearchScreen: View {
    @State private var categories: [CategoryList] = []
    @State private var searchProducts = ""
    
    
    
//    var filteredProducts: [Category]{
//        guard !searchProducts.isEmpty else { return categories }
//        return categories.filter { $0.name.localizedCaseInsensitiveContains(searchProducts) }
//    }
    
    var body: some View {
        
        NavigationStack{
            
//            List(categoryList, id: \.id) {category in
//                HStack(spacing: 17) {
//                    Image(category.image)
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        .clipShape(Circle())
//                        .frame(width: 44,height:44)
//                    Text(category.name)
//                        .font(.caption2)
//                        .fontWeight(.medium)
//                        .padding()
//                }
//                
//            }
//            .navigationTitle("Explore")
//            .searchable(text: $searchProducts, prompt: "Search")
        }
        
    }
}

#Preview {
    SearchScreen()
}
