//
//  BestSellerProduct.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-21.
//

import Foundation

struct BestSellerProduct: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var bestSellerProductList = [BestSellerProduct(name: "Pink Blouse", image: "pic2", price: 2000),
                             BestSellerProduct(name: "white", image: "pic1", price: 3000)]
