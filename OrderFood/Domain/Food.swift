//
//  Food.swift
//  OrderFood
//
//  Created by João Pedro Soares on 31/07/2023.
//

import Foundation

struct Food: FoodUseCase {
    
    var id = UUID()
    var name: String
    var type: FoodType
    var image: String
    var price: PriceUseCase
}
