//
//  BestSellerProduct.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-21.
//

import Foundation

struct BestSellerProduct: Codable {
    let msg: String
    let data: [BestSellerProductList]?
}

// MARK: - Datum
struct BestSellerProductList: Codable {
    let id: String
    let name: String
    let imageURL: String
    let price: Int
    let description: String
    let v: Int

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name
        case imageURL = "imageUrl"
        case price, description
        case v = "__v"
    }
}

//struct BestSellerProduct: Identifiable {
//    var id = UUID()
//    var name: String
//    var image: String
//    var price: Int
//}
//
//var bestSellerProductList = [BestSellerProduct(name: "Pink Blouse", image: "pic2", price: 2000),
//                             BestSellerProduct(name: "white", image: "pic1", price: 3000)]
