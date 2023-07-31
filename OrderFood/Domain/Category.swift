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
    
    static var defaultCategories: [Category] {
        return [
            Category(name: "Burger", image: "burgers"),
            Category(name: "Pizza", image: "pizzas"),
            Category(name: "Deserts", image: "deserts"),
            Category(name: "Drinks", image: "drinks")
        ]
    }
}

