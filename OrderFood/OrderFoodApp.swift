//
//  OrderFoodApp.swift
//  OrderFood
//
//  Created by João Pedro Soares on 28/07/2023.
//

import SwiftUI

@main
struct OrderFoodApp: App {
    var body: some Scene {
        
        WindowGroup {
            let categories = Category.defaultCategories
            
            HomeView(categories: categories)
        }
    }
}
