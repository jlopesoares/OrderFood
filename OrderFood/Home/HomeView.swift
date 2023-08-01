//
//  HomeView.swift
//  OrderFood
//
//  Created by João Pedro Soares on 31/07/2023.
//

import SwiftUI

struct HomeView: View {
    
    @State var selectedCategory: Category?
    let categories: [Category]
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
                              image: "pizza",
                              price: Price(currentPrice: 20))]
    
    var body: some View {
        ZStack {
            Color(uiColor: UIColor(red: 0.96, green: 0.96, blue: 0.96, alpha: 1.00))
            
            ScrollView {
                LazyVStack(alignment: .leading) {
                    HomeHeaderView()
                    HomeSearchView()
                    HomeCategoriesView(categories: categories,
                                       selectedCategory: $selectedCategory)
                    HomePopularView(selectedCategory: $selectedCategory,
                                    items: foods)
                }
                .padding(.vertical, 100)
            }
        }
        .ignoresSafeArea()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(categories: [Category(name: "dummy", image: "drinks", type: .drinks)])
    }
}
