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
    let foods: [Food]
    let foodAPI = FoodAPI()
    
    var body: some View {
        NavigationStack {
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
        .onAppear {
            Task {
                let result = try await foodAPI.getCategories()
                print(result)
                
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    
    
    
    static var previews: some View {
        HomeView(categories: Category.dummyCategories,
                 foods: Food.MockFoods)
    }
}
