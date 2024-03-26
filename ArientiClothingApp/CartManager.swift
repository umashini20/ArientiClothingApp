//
//  CartManager.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-25.
//

import Foundation

class CartManager: ObservableObject {
    
    struct CartItem {
        let product: Product?
        var qty: Int
    }
    
    //@Published private(set) var products: [Product] = []
    @Published private(set) var cartItems: [CartItem] = []
    @Published private(set) var total: Int = 0
    
    func addToCart(product: Product) {
        if let index = cartItems.firstIndex(where: { $0.product?.id == product.id}){
            cartItems[index].qty += 1
        } else {
            cartItems.append(CartItem(product: product, qty: 1))
        }
        
        total += product.price
//        products.append(product)
//        total += product.price
    }
    
    func removeFromCart(productID: String){
        if let index = cartItems.firstIndex(where: { $0.product?.id == productID}) {
            let removedProduct = cartItems[index]
            total -= removedProduct.product?.price ?? 0 * removedProduct.qty
            cartItems.remove(at: index)
        }
    }
    
    func decreaseQuantity(productID: String) {
        if let index = cartItems.firstIndex(where: { $0.product?.id == productID }) {
                if cartItems[index].qty > 1 {
                    cartItems[index].qty -= 1
                    total -= cartItems[index].product?.price ?? 0
                }
            }
        }
    
//    func removeFromCart(product: Product) {
//        products = products.filter { $0.id != product.id}
//        total -= product.price
//    }
}
