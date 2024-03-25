//
//  CategoryViewModel.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-22.
//

import Foundation
import SwiftUI
import Combine

class CategoryViewModel : ObservableObject{
    
    var compose = Set<AnyCancellable>()
    
    @Published var category : [CategoryList] = []
    
    init(){
        loadDataCombine()
    }
    func loadDataCombine(){
        let urlString = "https://clothingapixcode.onrender.com/api/v1/category"
        
        guard let url = URL(string: urlString) else {return}
        let request = URLRequest(url: url)
        
        let session = URLSession(configuration: .default)
        session.dataTaskPublisher(for: request)
            .map(\.data)
            .retry(3)
            .decode(type: Category.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
            .receive(on: DispatchQueue.main)
            .sink {
                res in
            } receiveValue: { model in
                guard let categoryArray = model.data else{ return}
                self.category = categoryArray
            }.store(in: &compose)
    }
}

