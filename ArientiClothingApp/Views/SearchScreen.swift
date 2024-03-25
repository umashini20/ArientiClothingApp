//
//  SearchScreen.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-21.
//

import SwiftUI
import Kingfisher

struct SearchScreen: View {
    @StateObject var productView = ProductViewModel()
    
//    @State private var categories: [CategoryList] = []
    @State var selectedProductN: [Product] = []
    @State private var searchProducts = ""
    @State private var isList: Bool = false
    @State private var isShowingDetails: Bool = false
    
    
    
    
    
    var filteredProducts: [Product]{
        guard !searchProducts.isEmpty else { return productView.products}
        return productView.products.filter { $0.name.localizedCaseInsensitiveContains(searchProducts) }
    }
    
    var body: some View {
        
        NavigationStack{
            
            List(filteredProducts, id: \.id) {product in
                HStack(spacing: 17) {
                    KFImage.url(URL(string: "https://www.arienti.lk/cdn/shop/files" + (product.imageURL ?? "")))
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame(width: 44,height:44)
                    Text(product.name)
                        .font(.caption2)
                        .fontWeight(.medium)
                        .padding()
                }
                
            }
            .navigationTitle("Explore")
            .searchable(text: $searchProducts, prompt: "Search")
        }
        
    }
}

#Preview {
    SearchScreen()
}
