//
//  Food.swift
//  OrderFood
//
//  Created by João Pedro Soares on 31/07/2023.
//

import Foundation

struct Food: FoodUseCase, Hashable, Codable {
    var id: Int
    var name: String
    var type: FoodType
    var image: String
    var price: Price
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: Food, rhs: Food) -> Bool {
        lhs.id == rhs.id
    }
    
    var isPizza: Bool {
        type == .pizza
    }
}

extension Food {
    
    static var samplePizza: Food {
        Food(id: 1,
             name: "Margarita",
             type: .pizza,
             image: "pizza",
             price: Price(currentPrice: 20))
    }
    
    static var MockPopularFoods: [Food] {
        return [Food(id: 1,
                     name: "Tacos",
                     type: .burger,
                     image: "pizza",
                     price: Price(currentPrice: 20)),
                Food(id: 2,
                    name: "Big Tasty",
                    type: .burger,
                    image: "pizza",
                    price: Price(currentPrice: 20))]
    }
    
    static var MockFoods: [Food] {
        return [Food(id: 1,
                     name: "Big Mac",
                     type: .burger,
                     image: "pizza",
                     price: Price(currentPrice: 20)),
                Food(
                    id: 2,
                    name: "Big Tasty",
                    type: .burger,
                    image: "pizza",
                    price: Price(currentPrice: 20)),
                Food(
                    id: 3,
                    name: "4 Seasons",
                    type: .pizza,
                    image: "pizza",
                    price: Price(currentPrice: 20))]
    }
}
