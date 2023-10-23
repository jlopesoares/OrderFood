//
//  HomePopularView.swift
//  OrderFood
//
//  Created by João Pedro Soares on 31/07/2023.
//

import SwiftUI

struct HomePopularView: View {
    
    let items: [Food]
    
    var body: some View {
        
        VStack{
            HeaderView(title: "Most Popular")
                .padding()
            
            NavigationStack {
                LazyVStack {
                    ForEach(items) { food in
                        NavigationLink(value: food, label: {
                            PopularItemCellView(isFavourite: Bool.random(), food: food)
                        })
                    }
                }
            }
        }
        .navigationDestination(for: Food.self) { food in
            FoodDetailView()
        }
    }
}

struct HomePopularView_Previews: PreviewProvider {
    static var previews: some View {

        let foods: [Food] = Food.MockPopularFoods

        HomePopularView(items: foods)
            .previewLayout(.fixed(width: 375, height: 400))
    }
}
