//
//  Price.swift
//  OrderFood
//
//  Created by João Pedro Soares on 31/07/2023.
//

import Foundation

struct Price: PriceUseCase, Codable {
    var currentPrice: Double
    var oldPrice: Double?
    var discount: Double?
}
