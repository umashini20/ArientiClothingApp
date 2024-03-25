//
//  CartManager.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-25.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    func addToCart(product: Product) {
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Product) {
        products = products.filter { $0.name != product.name}
        total -= product.price
    }
}
