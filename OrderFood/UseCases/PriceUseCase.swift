//
//  PriceUseCase.swift
//  OrderFood
//
//  Created by João Pedro Soares on 31/07/2023.
//

import Foundation

protocol PriceUseCase {
    var currentPrice: Double { get set }
    var oldPrice: Double? { get set }
    var discount: Double? { get set }
}
