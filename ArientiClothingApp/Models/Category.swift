//
//  Category.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-21.
//

import Foundation


struct Category: Identifiable {
    var id = UUID()
    var name: String
    var image: String

}

var categoryList = [Category(name: "Dresses", image: "pic3"),Category(name: "Tops", image: "pic2"),
                    Category(name: "Tees", image: "pic1"),Category(name: "Pants", image: "pic3"),
                    Category(name: "Skirts", image: "pic4"),Category(name: "Work Wear", image: "pic4"),
                    Category(name: "Party Wear", image: "pic4")]
