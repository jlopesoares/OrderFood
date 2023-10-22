//
//  NetworkAPI.swift
//  OrderFood
//
//  Created by João Pedro Soares on 22/10/2023.
//

import Foundation

final class NetworkAPI {
    
    static func urlBuilder(for path: String) -> URL? {
        var urlComponents = URLComponents()
        urlComponents.scheme = "https"
        urlComponents.host = "api.npoint.io"
        urlComponents.path = path
        
        return urlComponents.url
    }
    
    static func fetchData<T>(from url: URL?) async throws -> T? where T: Codable {
        guard
            let url
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
