//
//  Category.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-21.
//

import Foundation


struct Category: Codable {
    let msg: String
    let data: [CategoryList]?
}

// MARK: - Datum
struct CategoryList: Codable {
    let id: String
    let name: String
    let imageURL: String

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name
        case imageURL = "imageUrl"
    }
}
