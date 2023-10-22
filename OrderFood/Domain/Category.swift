//
//  Category.swift
//  OrderFood
//
//  Created by João Pedro Soares on 31/07/2023.
//

import Foundation

struct Category: Codable, Identifiable {
    var id: Int
    var name: String
    var image: String
    var type: FoodType
}

extension Category {
    
    static var fixture: Category {
        Category(id: 999, name: "Burger", image: "burgers", type: .burger)
    }
    
    static var mockedCategories: [Category] {
        return [
            Category(id: 1, name: "Burger", image: "burgers", type: .burger),
            Category(id: 2, name: "Pizza", image: "pizzas", type: .pizza),
            Category(id: 3, name: "Deserts", image: "deserts", type: .deserts),
            Category(id: 4, name: "Drinks", image: "drinks", type: .drinks)
        ]
    }
}
