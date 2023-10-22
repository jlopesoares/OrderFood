//
//  HomePopularView.swift
//  OrderFood
//
//  Created by João Pedro Soares on 31/07/2023.
//

import SwiftUI

struct HomePopularView: View {
    
    @Binding var selectedCategory: Category?
    let items: [Food]
    
    var body: some View {
        
        HStack {
            Text("Most Popular")
                .font(.system(size: 18, weight: .medium))
            Spacer()
            Text("...")
                .font(.system(size: 18, weight: .medium))
        }
        .frame(maxWidth: .infinity)
        .padding(24.0)

        NavigationStack {
            LazyVStack {
                ForEach(foodByType(type: selectedCategory?.type ?? .burger), id: \.id) { food in
                    NavigationLink(value: food, label: {
                        PopularItemCellView(isFavourite: Bool.random(), food: food)
                    })
                }
            }
        }
        .navigationDestination(for: Food.self) { food in
            FoodDetailView()
        }
    }
    
    func foodByType(type: FoodType) -> [Food] {
        items.filter { $0.type == type}
    }
}

struct HomePopularView_Previews: PreviewProvider {
    static var previews: some View {

        let foods: [Food] = [Food(name: "Big Mac",
                                  type: .burger,
                                  image: "",
                                  price: Price(currentPrice: 20)),
                             Food(name: "Big Tasty",
                                  type: .burger,
                                  image: "",
                                  price: Price(currentPrice: 20)),
                             Food(name: "4 Seasons",
                                  type: .pizza,
                                  image: "",
                                  price: Price(currentPrice: 20))]

        HomePopularView(selectedCategory: .constant(Category(id: 1, name: "dummy", image: "pizza", type: .burger)),
                        items: foods)
            .previewLayout(.fixed(width: 375, height: 50))
    }
}
