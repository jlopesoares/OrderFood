//
//  FoodAPI.swift
//  OrderFood
//
//  Created by João Pedro Soares on 20/10/2023.
//

import Foundation

final class FoodAPI {
    
    func getCategories() async throws -> [NewCategory]? {

        var categoriesURLComponents = URLComponents()
        categoriesURLComponents.scheme = "https"
        categoriesURLComponents.host = "api.npoint.io"
        categoriesURLComponents.path = "/1dcd902bc67069ab70b8"

        do {
            let categories: [NewCategory]? = try await fetchData(from: categoriesURLComponents)
            return categories
        } catch {
            throw error
        }
    }
    
    
}

private extension FoodAPI {
    private func fetchData<T>(from components: URLComponents) async throws -> T? where T: Codable {
        guard
            let url = components.url
        else {
            throw APIError.genericError
        }
        
        do {
            let (data, _) = try await URLSession(configuration: .default).data(from: url)
            
            do {
                let decoder = JSONDecoder()
                return try decoder.decode(T.self, from: data)
                
            } catch {
                throw APIError.parseError
            }
            
        } catch {
            throw error
        }
    }
}
