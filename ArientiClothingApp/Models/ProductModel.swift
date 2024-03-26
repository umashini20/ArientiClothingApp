//
//  Product.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-21.
//

import Foundation




//struct ProductModel: Decodable {
//    let msg: String
//    let data: [Product]?
//}
//
//// MARK: - Datum
//struct Product: Decodable, Identifiable {
//    let id: String
//    let name: String
//    let imageURL: String
//    let price: Int
//    let description: String
//    let v: Int?
//    let category: String
//
//    enum CodingKeys: String, CodingKey {
//        
//        case category
//        case id = "_id"
//        case name
//        case imageURL = "imageUrl"
//        case price = "price"
//        case description
//        case v = "__v"
//        case category = "category"
//    }
//    
//}

struct ProductModel: Decodable {
    let msg: String
    let data: [Product]?
}

// MARK: - Datum
struct Product: Decodable , Identifiable {
    let id: String
    let name: String
    let imageURL: String
    let price: Int
    let description: String
    let v: Int?
    let category: String

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name
        case imageURL = "imageUrl"
        case price, description
        case v = "__v"
        case category
    }
}

// MARK: - Category


struct MockData{
    static let sampleProduct = Product(id: "12", name: "testing", imageURL: "pic2", price: 234, description: "testing", v: 1, category: "dress")
    
    static let products = [sampleProduct,sampleProduct,sampleProduct,sampleProduct]
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
