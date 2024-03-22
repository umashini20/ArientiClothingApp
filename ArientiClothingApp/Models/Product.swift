//
//  Product.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-21.
//

import Foundation

//struct Product: Codable {
//    let msg: String
//    let data: [productList]
////    let id, name: String
////    let imageURL: String
////    let price: Int
////    let description: String
////    let createdAt, updatedAt: String?
////    let v: Int?
//}
//
//// MARK: - Datum
//struct productList: Codable {
//    let id, name: String
//    let imageURL: String
//    let price: Int
//    let description: String
//    let createdAt, updatedAt: String?
//    let v: Int?
//
//    enum CodingKeys: String, CodingKey {
//        case id = "_id"
//        case name
//        case imageURL = "imageUrl"
//        case price, description, createdAt, updatedAt
//        case v = "__v"
//    }
//}

struct Product: Codable {
    let msg: String
    let data: [ProductList]?

}

struct ProductList: Codable {
    let id: String
    let name: String
    let imageURL: String
    let price: Int
    let description: String
    let createdAt, updatedAt: String?
    let v: Int?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name
        case imageURL = "imageUrl"
        case price, description, createdAt, updatedAt
        case v = "__v"
    }
}

//struct Product: Identifiable {
//    var id = UUID()
//    var name: String
//    var image: String
//    var price: Int
//}
//
//var productList = [Product(name: "Pink Blouse", image: "pic2", price: 2000),
//                   Product(name: "white", image: "pic2", price: 3000),
//                   Product(name: "white", image: "pic3", price: 3000),
//                   Product(name: "white", image: "pic4", price: 3000),
//                   Product(name: "white", image: "pic5", price: 3000),
//                   Product(name: "white", image: "pic1", price: 3000),
//                   Product(name: "white", image: "pic2", price: 3000),
//                   Product(name: "white", image: "pic3", price: 3000)]
