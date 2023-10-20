//
//  FoodUseCase.swift
//  OrderFood
//
//  Created by João Pedro Soares on 31/07/2023.
//

import Foundation

enum FoodType: Codable {
    case burger,
    pizza,
    deserts,
    drinks
}

protocol FoodUseCase: Identifiable {
    
    var id: UUID { get }
    var name: String { get set }
    var type: FoodType { get set }
    var image: String { get set }
    var price: PriceUseCase { get set }
}
