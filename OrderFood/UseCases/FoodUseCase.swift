//
//  FoodUseCase.swift
//  OrderFood
//
//  Created by João Pedro Soares on 31/07/2023.
//

import Foundation

enum PizzaSizes: CaseIterable {
    case small,
    medium,
    big
    
    var description: String {
        switch self {
        case .small:
            return "S"
        case .medium:
            return "M"
        case .big:
            return "B"
        }
    }
}

enum FoodType: Int, Codable {
    case burger,
         pizza,
         deserts,
         drinks
}

protocol FoodUseCase: Identifiable {
    
    var id: Int { get }
    var name: String { get set }
    var type: FoodType { get set }
    var image: String { get set }
    var price: Price { get set }
}
