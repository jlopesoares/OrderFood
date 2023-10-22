//
//  CategoriesAPI.swift
//  OrderFood
//
//  Created by João Pedro Soares on 22/10/2023.
//

import Foundation

protocol CategoriesAPIUseCase {
    func fetchCategories() async throws -> [Category]?
}

final class CategoriesAPI: CategoriesAPIUseCase {
    
    func fetchCategories() async throws -> [Category]? {
        
        let path = "/1dcd902bc67069ab70b8"
        let url = NetworkAPI.urlBuilder(for: path)

        do {
            let categories: [Category]? = try await NetworkAPI.fetchData(from: url)
            return categories
        } catch {
            throw error
        }
    }
}

final class MockCategoriesAPI: CategoriesAPIUseCase {
    
    func fetchCategories() async throws -> [Category]? {
        Category.mockedCategories
    }
}
