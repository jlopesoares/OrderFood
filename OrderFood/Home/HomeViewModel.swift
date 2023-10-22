//
//  HomeViewModel.swift
//  OrderFood
//
//  Created by João Pedro Soares on 22/10/2023.
//

import Foundation

@MainActor final class HomeViewModel: ObservableObject {
    
    let api: CategoriesAPIUseCase
    
    @Published var selectedCategory: Category?
    @Published var categories: [Category] = []
    @Published var foods: [Food] = []
    
    init(api: CategoriesAPIUseCase, categories: [Category] = [], selectedCategory: Category? = nil, foods: [Food] = []) {
        self.api = api
        self.selectedCategory = selectedCategory
        self.foods = foods
    }
    
    func fetchCategories() async {
        do {
            if let categories = try await api.fetchCategories() {
                self.categories = categories
            }
            
        } catch let error {
            print(error)
        }
    }
}

