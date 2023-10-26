//
//  HomeView.swift
//  OrderFood
//
//  Created by João Pedro Soares on 31/07/2023.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel(api: CategoriesAPI(),
                                               foodAPI: FoodAPI())
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.mainBackgroundColor
                
                ScrollView {
                    LazyVStack(alignment: .leading) {
                        HomeHeaderView()
                        HomeSearchView()
                        HomeCategoriesView(categories: viewModel.categories)
                        HomePopularView(items: viewModel.foods)
                    }
                    .padding(.vertical, 100)
                }
            }
            .ignoresSafeArea()
        }
        .task {
            await viewModel.fetchCategories()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        let mockedViewModel = HomeViewModel(api: MockCategoriesAPI(),
                                            foodAPI: MockFoodAPI(),
                                            categories: Category.mockedCategories)
        
        HomeView(viewModel: mockedViewModel)
    }
}
