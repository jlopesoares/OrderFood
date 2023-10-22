//
//  FoodAPI.swift
//  OrderFood
//
//  Created by João Pedro Soares on 20/10/2023.
//

import Foundation

protocol FoodAPIUseCase {
    func fetchFood(for category: Category) async throws -> [Food]?
    func fetchPopular() async throws -> [Food]?
}

final class FoodAPI: FoodAPIUseCase {
    
    func fetchPopular() async throws -> [Food]? {
        
        let path = "/1dcd902bc67069ab70b8"
        let url = NetworkAPI.urlBuilder(for: path)
        
        do {
            let popularFood: [Food]? = try await NetworkAPI.fetchData(from: url)
            return popularFood
        } catch {
            throw error
        }
        
    }
    
    func fetchFood(for category: Category) async throws -> [Food]? {

        let path = "/1dcd902bc67069ab70b8"
        let url = NetworkAPI.urlBuilder(for: path)

        do {
            let food: [Food]? = try await NetworkAPI.fetchData(from: url)
            return food
        } catch {
            throw error
        }
    }
}

final class MockFoodAPI: FoodAPIUseCase {
    
    func fetchPopular() async throws -> [Food]? {

        return nil
        
    }
    
    func fetchFood(for category: Category) async throws -> [Food]? {
        return nil
    }
}
