//
//  OrderFood.swift
//  OrderFood
//
//  Created by João Pedro Soares on 31/07/2023.
//

import Foundation

final class OrderFood {
    
    static let shared: OrderFood = OrderFood()
    
    var selectedCategory: Category?
    
    var settedCategory: (() -> (Category))?
    
}
