//
//  HomeCategoriesView.swift
//  OrderFood
//
//  Created by João Pedro Soares on 31/07/2023.
//

import SwiftUI

struct HomeCategoriesView: View {
    
    var categories: [Category]
    @Binding var selectedCategory: Category?
    
    var body: some View {
        
        HStack {
            Text("Explore Categories")
                .font(.system(size: 18, weight: .medium))
            Spacer()
            Text("...")
                .font(.system(size: 18, weight: .medium))
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 24.0)
        
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(categories, id: \.id) { category in
                    CategoryCellView(selectedCategory: $selectedCategory,
                                     category: category)
                }
            }
        }
        .ignoresSafeArea()
        .onAppear {
            selectedCategory = categories.first!
        }
    }
}

struct HomeCategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        HomeCategoriesView(categories: Category.dummyCategories, selectedCategory: .constant(Category.dummyCategories.first!))
            .previewLayout(.fixed(width: 375, height: 150))
    }
}
