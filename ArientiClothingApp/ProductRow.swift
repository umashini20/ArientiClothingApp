//
//  ProductRow.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-25.
//

import SwiftUI

struct ProductRow: View {
    
    @EnvironmentObject var cartManager: CartManager
    var product: Product?
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ProductRow(product: Product(category: CategoryListNew(catimageURL: "", catname: "", cid: ""), id: "", name: "", imageURL: "", price: 0, description: "", v: 0))
        .environmentObject(CartManager())
}
