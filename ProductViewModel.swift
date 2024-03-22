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
    
    @Published var products : [ProductList] = []
    
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
            .decode(type: Product.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
            .receive(on: DispatchQueue.main)
            .sink {
                res in
            } receiveValue: { model in
                guard let productArray = model.data else{ return}
                self.products = productArray
            }.store(in: &compose)
    }
}
