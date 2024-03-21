//
//  SearchScreen.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-21.
//

import SwiftUI

struct SearchScreen: View {
    @State private var p: [Category] = []
    @State private var searchProducts = ""
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        ForEach(categoryList, id: \.id) {category in
                    CategoryCard(category: category)
                }
    }
}

#Preview {
    SearchScreen()
}
