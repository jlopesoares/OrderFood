//
//  HomeCategoriesView.swift
//  OrderFood
//
//  Created by João Pedro Soares on 31/07/2023.
//

import SwiftUI

struct HomeCategoriesView: View {
    
    var categories: [Category]
    
    var body: some View {
        
        VStack {
            HeaderView(title: "Explore Categories")
                .padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(categories) { category in
                        CategoryCellView(category: category)
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
}

struct HomeCategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        HomeCategoriesView(categories: Category.mockedCategories)
            .previewLayout(.fixed(width: 375, height: 170))
    }
}
