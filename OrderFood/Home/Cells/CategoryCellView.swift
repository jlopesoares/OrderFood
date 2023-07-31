//
//  CategoryCellView.swift
//  OrderFood
//
//  Created by João Pedro Soares on 31/07/2023.
//

import SwiftUI

struct CategoryCellView: View {
    
    let category: Category
    let isSelected: Bool
    
    var body: some View {
        
        Button {
            print("selected category \(category)")
            OrderFood.shared.selectedCategory = category
            
        } label: {
            ZStack {
                if isSelected {
                    Color(uiColor: UIColor(red: 0.97, green: 0.72, blue: 0.38, alpha: 1.00))
                } else {
                    Color(.white)
                }
                
                VStack(spacing: 12) {
                    Image(category.image)
                        .resizable()
                        .frame(width: 35, height: 35)
                        .padding(.horizontal, 14)
                        .padding(.vertical, 18.0)
                        .background(.white)
                        .cornerRadius(35)
                    
                    Text(category.name)
                        .font(.system(size: 14))
                        .bold()
                        .foregroundColor(isSelected ? .white : .black)
                }
                .frame(width:85, height: 140)
            }
            .cornerRadius(40)
            .padding(.horizontal, 12.0)
        }
        .cornerRadius(40)
        .padding(.horizontal, 12.0)
    }
}

struct CategoryCellView_Previews: PreviewProvider {
    static var previews: some View {
        let randomCategory = Category.defaultCategories.randomElement()!
        CategoryCellView(category: randomCategory, isSelected: true)
            .previewLayout(.fixed(width: 85, height: 140))
    }
}