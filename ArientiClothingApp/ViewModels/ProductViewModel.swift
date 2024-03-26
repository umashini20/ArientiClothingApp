//
//  ProductViewModel.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-22.
//

import Foundation
import SwiftUI
import Combine

class ProductViewModel : ObservableObject{
    
    var compose = Set<AnyCancellable>()
    
    @Published var products : [Product] = []
//    @Published var filteredProducts: []
//    @Published var categories: [CategoryListNew] = []
    var selectedProduct: Product?
    @State var uniqueCategories: Set<String> = Set()
//    var categoryId: String
    
    init(){
       loadDataCombine()
    }
    func loadDataCombine(){
        let urlString = "https://clothingapixcode.onrender.com/api/v1/products"
        
        guard let url = URL(string: urlString) else {return}
        let request = URLRequest(url: url)
        
        let session = URLSession(configuration: .default)
        session.dataTaskPublisher(for: request)
            .map(\.data)
            .retry(3)
            .decode(type: ProductModel.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
            .receive(on: DispatchQueue.main)
            .sink {
                res in
            } receiveValue: { model in
                guard let productArray = model.data else{ return}
                self.products = productArray
//                self.extractCategories(from: productArray)
            }.store(in: &compose)
      
    }
    
    func filterByCategory(forCategoryType proCategory: String){
        self.products = self.products.filter{ $0.category == proCategory}
        print(products)
    }
    func filterCat(from products: [Product]) -> Set<String>{
        var uniqueCategories: Set<String> = Set()
        for product in products {
            uniqueCategories.insert(product.category ?? "")
        }
        return uniqueCategories
    }
    
//    private func extractCategories(from products: [ProductList]) {
//            // Extracting categories from products
//            let categories = products.map { $0.category }
//            self.categories = categories
//        }
}
