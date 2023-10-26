//
//  HomeViewModel.swift
//  OrderFood
//
//  Created by João Pedro Soares on 22/10/2023.
//

import Foundation

@MainActor final class HomeViewModel: ObservableObject {
    
    let api: CategoriesAPIUseCase
    let foodAPI: FoodAPIUseCase
    
    @Published var categories: [Category] = []
    @Published var foods: [Food] = []
    
    init(api: CategoriesAPIUseCase, foodAPI: FoodAPIUseCase, categories: [Category] = [], foods: [Food] = []) {
        self.api = api
        self.foodAPI = foodAPI
        self.foods = foods
    }
    
    func fetchCategories() async {
        do {
            if let categories = try await api.fetchCategories() {
                self.categories = categories
            }
            
            foods = Food.MockPopularFoods
            
        } catch let error {
            print(error)
        }
    }
}

