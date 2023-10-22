//
//  NetworkAPI.swift
//  OrderFood
//
//  Created by João Pedro Soares on 22/10/2023.
//

import Foundation

final class NetworkAPI {
    static func fetchData<T>(from components: URLComponents) async throws -> T? where T: Codable {
        guard
            let url = components.url
        else {
            throw APIError.genericError
        }
        
        do {
            
            let (data, _) = try await URLSession(configuration: .default).data(from: url)
            return try JSONDecoder().decode(T.self, from: data)
            
        } catch DecodingError.dataCorrupted {
            throw APIError.parseError
        } catch let error {
            print(error)
            throw error
        }
    }
}
