//
//  Food.swift
//  OrderFood
//
//  Created by João Pedro Soares on 31/07/2023.
//

import Foundation

struct Food: FoodUseCase, Hashable {
    var id = UUID()
    var name: String
    var type: FoodType
    var image: String
    var price: PriceUseCase
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: Food, rhs: Food) -> Bool {
        lhs.id == rhs.id
    }
}

extension Food {
    static var MockFoods: [Food] {
        return [Food(name: "Big Mac",
                     type: .burger,
                     image: "pizza",
                     price: Price(currentPrice: 20)),
                Food(name: "Big Tasty",
                     type: .burger,
                     image: "pizza",
                     price: Price(currentPrice: 20)),
                Food(name: "4 Seasons",
                     type: .pizza,
                     image: "pizza",
                     price: Price(currentPrice: 20))]
    }
}
