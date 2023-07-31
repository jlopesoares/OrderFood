//
//  HomeView.swift
//  OrderFood
//
//  Created by João Pedro Soares on 31/07/2023.
//

import SwiftUI

struct HomeView: View {
    
    let categories: [Category]
    
    var body: some View {
        ZStack {
            Color(uiColor: UIColor(red: 0.96, green: 0.96, blue: 0.96, alpha: 1.00))
            
            ScrollView {
                LazyVStack(alignment: .leading) {
                    HomeHeaderView()
                    HomeSearchView()
                    HomeCategoriesView(categories: categories)
                    HomePopularView(items: [])
                }
                .padding(.vertical, 100)
            }
        }
        .ignoresSafeArea()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(categories: [Category(name: "dummy", image: "drinks")])
    }
}
