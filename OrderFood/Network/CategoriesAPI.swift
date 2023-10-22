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

        var categoriesURLComponents = URLComponents()
        categoriesURLComponents.scheme = "https"
        categoriesURLComponents.host = "api.npoint.io"
        categoriesURLComponents.path = "/1dcd902bc67069ab70b8"

        do {
            let categories: [Category]? = try await NetworkAPI.fetchData(from: categoriesURLComponents)
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
