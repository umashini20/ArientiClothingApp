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
    @State var selectedProduct : Product?
    @State var isSelected : Bool = false
    
    
    
    
    
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
                .onTapGesture {
                    selectedProduct = product
                    isSelected = true
                    
                }
                
                
            }
            .navigationBarBackButtonHidden(true)            .navigationTitle(Text("Explore"))
            .searchable(text: $searchProducts, prompt: "Search")
        }
      
        .blur(radius : isSelected ? /*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/ : 0)
        .overlay(
          ZStack{
              if isSelected{
                  ProductDetailsScreen(selectProduct: $selectedProduct, isShowingDetails: .constant(true), isSelected: $isSelected)
                      .frame(width: 300, height: 530)
                   
                  
              }
          }
              .frame(maxWidth: .infinity, maxHeight: .infinity)
                  
          )
        .onChange(of: isSelected) { newValue in
                   if !newValue {
                       selectedProduct = nil
                   }
               }
        
    }
}

#Preview {
    SearchScreen()
}
