//
//  Category.swift
//  OrderFood
//
//  Created by João Pedro Soares on 31/07/2023.
//

import Foundation

struct Category {
    var id = UUID()
    var name: String
    var image: String
    var type: FoodType
    
    static var defaultCategories: [Category] {
        return [
            Category(name: "Burger", image: "burgers", type: .burger),
            Category(name: "Pizza", image: "pizzas", type: .pizza),
            Category(name: "Deserts", image: "deserts", type: .deserts),
            Category(name: "Drinks", image: "drinks", type: .drinks)
        ]
    }
}

