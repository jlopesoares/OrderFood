//
//  CategoryCellView.swift
//  OrderFood
//
//  Created by João Pedro Soares on 31/07/2023.
//

import SwiftUI

struct CategoryCellView: View {
    
    var category: Category
    
    var body: some View {
        
        Button {
            print("selected category \(category)")
        } label: {
            ZStack {
                Color.white
                
                VStack(spacing: 12) {
                    Image(category.image)
                        .resizable()
                        .frame(width: 35, height: 35)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 18.0)
                        .background(.white)
                        .cornerRadius(35)
                    
                    Text(category.name)
                        .font(.system(size: 14))
                        .bold()
                        .foregroundColor(.primary)
                }
                .frame(width:85, height: 140)
            }
            .cornerRadius(40)
            .padding(.horizontal, 12.0)
        }
        .cornerRadius(40)
    }
}

struct CategoryCellView_Previews: PreviewProvider {
    static var previews: some View {
        let randomCategory = Category.mockedCategories.randomElement()!
        CategoryCellView(category: randomCategory)
            .previewLayout(.fixed(width: 85, height: 140))
    }
}
