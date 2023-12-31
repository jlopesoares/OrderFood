//
//  PopularItemCellView.swift
//  OrderFood
//
//  Created by João Pedro Soares on 31/07/2023.
//

import SwiftUI

struct PopularItemCellView: View {
    
    let isFavourite: Bool
    let food: Food
    
    
    var body: some View {
        ZStack {
            Color(.white)
            
            HStack(spacing: 16.0) {
                Image(food.image)
                    .resizable()
                    .frame(width: 120, height: 120)
                    
                
                VStack(alignment: .leading, spacing: 16.0) {
                    Text(food.name)
                        .font(.system(size: 18.0))
                        .foregroundColor(.primary)
                        .bold()
                    
                    Text("Mixed Pizza")
                        .font(.system(size: 14.0))
                        .foregroundColor(.primary)
                    
                    HStack {
                        Text("€\(food.price.currentPrice, specifier: "%.2f")")
                            .font(.system(size: 18.0))
                            .bold()
                            .foregroundColor(.primary)
                        
                        if let oldPrice = food.price.oldPrice {
                            Text("€\(oldPrice)")
                                .font(.system(size: 14.0))
                                .strikethrough()
                                .foregroundColor(.gray)
                        }
                    }
                }
                Image(systemName: isFavourite ? "heart.fill" : "heart")
                    .foregroundColor(.red)
            }
            .frame(height: 150)
        }
        .cornerRadius(45.0)
        .padding(.horizontal, 24.0)
        .padding(.bottom, 16.0)
        .shadow(color: .black.opacity(0.1), radius: 8, y: 4)
        
    }
}

struct PopularItemCellView_Previews: PreviewProvider {
    static var previews: some View {
        PopularItemCellView(isFavourite: true,
                            food: Food.MockFoods.first!)
        .previewLayout(.fixed(width: 375, height: 250))
    }
}
